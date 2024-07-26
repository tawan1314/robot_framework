*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL004 Log out from Swag Labs
    [Tags]    Swag_Labs    website    logout_feature    products_page_element    STD_USER    SL004
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    burger_menu_btn_detail.Verify Logout element and logout
    home_page_feature.Verify all element on the homepage