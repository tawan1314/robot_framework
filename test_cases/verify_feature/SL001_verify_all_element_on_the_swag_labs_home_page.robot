*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL001 Verify all elements on the Swag Labs home page
    [Tags]    Swag_Labs    website    verify_home_page_feature    SL001
    home_page_feature.Verify all element on the homepage
