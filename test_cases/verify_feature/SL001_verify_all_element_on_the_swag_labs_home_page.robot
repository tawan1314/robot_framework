*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       Run Keywords    common_feature.Open Swag Labs
Test Teardown    Run Keywords    common_feature.Close Swag Labs

*** Test Cases ***
SL001 Verify all elements on the Swag Labs home page
    [Tags]    Swag_Labs    website    verify_feature    SL001
    home_page_feature.Login user    ${EMPTY}    ${EMPTY}
    Verify all elements on the Swag Labs home page

*** Keywords ***
Verify all elements on the Swag Labs home page
    common_feature.Verify error message popup    ${home_page.popup_msg}    ${login_error_lbl.empty_username_lbl}
    common_feature.Click close button when ready    ${home_page.close_popup_btn}