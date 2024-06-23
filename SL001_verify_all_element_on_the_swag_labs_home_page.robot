*** Settings ***
Resource         ${CURDIR}/../../keyword/import.resource
Test Setup       home_page_feature.Open Swag Labs
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
Verify all elements on the Swag Labs home page
    [Tags]    Swag_Labs    website    verify_home_page_feature    SL001
    home_page_feature.Verify all element on the homepage
