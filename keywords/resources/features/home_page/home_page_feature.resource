*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Verify header on homepage
    Verify header on the page
    ...    ${home_page.header_lbl}
    ...    ${home_page_element.home_page_header_lbl}

Verify elements on homepage
    Get Text    ${home_page.accepted_users_lbl}
    Verify element on the page
    ...    ${home_page.accepted_users_lbl}
    ...    ${home_page_element.home_page_accept_username_lbl}

Login user
    [Arguments]        ${username}                ${password}
    Input username and password    ${username}    ${password}
    common_feature.Click button when ready     ${home_page.button}           ${home_page_element.home_page_login_button}

Input username and password
    [Arguments]        ${username}                ${password}
    common_feature.Click element when ready       ${home_page.input_user}       ${home_page_element.home_page_username_lbl}
    common_feature.Input text   
    ...    ${home_page.input_user}    
    ...    ${home_page_element.home_page_username_lbl}    
    ...    ${username}
    common_feature.Click element when ready       ${home_page.input_user}       ${home_page_element.home_page_password_lbl}
    common_feature.Input text   
    ...    ${home_page.input_user}    
    ...    ${home_page_element.home_page_password_lbl}
    ...    ${password}
    common_feature.Capture Page

Clear username and password
    common_feature.Clear text on field    ${home_page.input_user}    ${home_page_element.home_page_username_lbl}
    common_feature.Clear text on field    ${home_page.input_user}    ${home_page_element.home_page_password_lbl}
