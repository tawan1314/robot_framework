*** Settings ***
Resource    ${CURDIR}/../../../keyword/import.resource

*** Keywords ***
Open Swag Labs
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window

Verify all element on the homepage
    Element Text Should Be        ${home_page_header}     ${home_page_element.header}
    # Element Text Should Be        ${username_input}       ${home_page_element.username}
    # Element Text Should Be        ${password_input}       ${home_page_element.password}
    # Element Text Should Be        ${login_button}         ${home_page_element.login_button}
    Element Text Should Be        ${accept_username}      ${home_page_element.accept_username.header}
    # Element Text Should Be        ${standard_user}        ${home_page_element.accept_username.user1}
    # Element Text Should Be        ${lock_out_user}        ${home_page_element.accept_username.user2}
    # Element Text Should Be        ${problem_user}         ${home_page_element.accept_username.user3}
    # Element Text Should Be        ${perf_glitch_user}     ${home_page_element.accept_username.user4}
    # Element Text Should Be        ${error_user}           ${home_page_element.accept_username.user5}
    # Element Text Should Be        ${visual_user}          ${home_page_element.accept_username.user6}
    Element Text Should Be        ${accept_password}      ${home_page_element.accept_password.header}
    # Element Text Should Be        ${all_pass}             ${home_page_element.accept_password.pass}

Login user
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${username_input}    timeout=2s
    Wait Until Element Is Visible    ${password_input}    timeout=2s
    Click Element    ${username_input}
    Input Text    ${username_input}    ${username}
    BuiltIn.Sleep    1s
    Click Element    ${password_input}
    Input Password    ${password_input}    ${password}
    BuiltIn.Sleep    1s
    Wait Until Element Is Visible    ${login_button}
    Click Button    ${login_button}

Verify error when login with empty username
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${popup_login_error}    timeout=2s
    ${empty_username}    Element Should Contain    ${popup_login_error}    ${login_error.empty_username}
    BuiltIn.Sleep    1s
    Click Button    ${close_popup_login_error}

Verify error when login with empty password
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${popup_login_error}    timeout=2s
    ${empty_username}    Element Should Contain    ${popup_login_error}    ${login_error.empty_password}
    BuiltIn.Sleep    1s
    Click Button    ${close_popup_login_error}

Verify error when login with invalid account
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${popup_login_error}    timeout=2s
    ${empty_username}    Element Should Contain    ${popup_login_error}    ${login_error.invalid_account}
    BuiltIn.Sleep    1s
    Click Button    ${close_popup_login_error}
    
