*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Verify all element on the homepage
    Element Text Should Be        ${home_page_header}            ${home_page_element.header}
    # Element Text Should Be        ${username_input}       ${home_page_element.username}
    Click Element                 ${username_input}
    # Element Text Should Be        ${password_input}       ${home_page_element.password}
    Click Element                 ${password_input}
    # Element Text Should Be        ${login_button}         ${home_page_element.login_button}
    Click Element                 ${login_button}
    Verify error when login with empty username
    Element Text Should Be        ${accept_username_header}      ${home_page_element.accept_username_header}
    Element Text Should Be        ${all_username}                ${home_page_element.accept_username}
    Element Text Should Be        ${accept_password_header}      ${home_page_element.accept_password_header}
    Element Text Should Be        ${all_pass}                    ${home_page_element.accept_password}
    Capture Page Screenshot

Verify elements on the homepage
    Element Text Should Be        ${home_page_header}            ${home_page_element.header}
    Element Text Should Be        ${accept_username_header}      ${home_page_element.accept_username_header}
    Element Text Should Be        ${all_username}                ${home_page_element.accept_username}
    Element Text Should Be        ${accept_password_header}      ${home_page_element.accept_password_header}
    Element Text Should Be        ${all_pass}                    ${home_page_element.accept_password}
    Capture Page Screenshot

Login user
    [Arguments]        ${username}          ${password}
    Click Element      ${username_input}
    Input Text         ${username_input}    ${username}
    Click Element      ${password_input}
    Input Password     ${password_input}    ${password}
    Capture Page Screenshot
    Click Button       ${login_button}
    Capture Page Screenshot

Verify popup when login with lock out user
    Element Should Contain    ${popup_login_error}        ${login_lock_out_user}
    Click Button              ${close_popup_login_error}
    Capture Page Screenshot

Verify error when login with empty username
    Element Should Contain    ${popup_login_error}        ${login_error.empty_username}
    Click Button              ${close_popup_login_error}
    Capture Page Screenshot

Verify error when login with empty password
    Element Should Contain    ${popup_login_error}        ${login_error.empty_password}
    Click Button              ${close_popup_login_error}
    Capture Page Screenshot

Verify error when login with invalid account
    Element Should Contain    ${popup_login_error}        ${login_error.invalid_account}
    Click Button              ${close_popup_login_error}
    Capture Page Screenshot

Clear username and password field
    [Arguments]    ${username_input_error}    ${password_input_error}
    Press Keys   ${username_input_error}   CTRL+a   BACKSPACE
    Press Keys   ${password_input_error}   CTRL+a   BACKSPACE