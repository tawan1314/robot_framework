*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       Run Keywords    common_feature.Open Swag Labs
Test Teardown    Run Keywords    common_feature.Close Swag Labs

*** Test Cases ***
SL001 Verify all elements on the Swag Labs home page
    [Documentation]                                                username    password
    [Tags]    Swag_Labs    website    verify_feature    SL001
    Verify all elements on the Swag Labs home page                 ${EMPTY}    ${EMPTY}

*** Keywords ***
Verify all elements on the Swag Labs home page
    [Arguments]    ${username}    ${password}
    home_page_feature.Login user                            ${username}               ${password}
    common_feature.Verify error message popup               ${home_page.popup_msg}    ${login_error_lbl.empty_username_lbl}
    common_feature.Close button when ready                  ${home_page.close_popup_btn}
