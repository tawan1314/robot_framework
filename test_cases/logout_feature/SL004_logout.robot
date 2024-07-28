*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       Run Keywords    common_feature.Open Swag Labs
Test Teardown    Run Keywords    common_feature.Close Swag Labs

*** Test Cases ***
SL004 Log out from Swag Labs
    [Tags]    Swag_Labs    website    logout_feature    products_page_element    STD_USER    SL004
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Logout Swag Labs
