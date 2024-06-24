*** Settings ***
Resource         ${CURDIR}/../../keyword/import.resource
Test Setup       home_page_feature.Open Swag Labs
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
Verify all elements on the Products page
    [Tags]    Swag_Labs    website    verify_products_page_feature    STD_USER    SL005
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Verify elements on the products page    ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Verify all products on the products page
    products_page_feature.Verify sort products option
    products_page_feature.Verify add to cart button
