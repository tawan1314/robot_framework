*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL006 Verify all elements on the inventory item page
    [Tags]    Swag_Labs    website    verify_feature    STD_USER    SL006
    home_page_feature.Login user   ${STD_USER.username}    ${STD_USER.password}
