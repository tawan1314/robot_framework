*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL005 Verify all elements on the Products page
    [Tags]    Swag_Labs    website    verify_products_page_feature    STD_USER    SL005
    home_page_feature.Login user                                      ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Verify elements on the products page
    products_page_feature.Verify all products on the products page
    burger_menu_btn_detail.Verify burger menu button options          ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Verify sort products option
    products_page_feature.Verify add to cart button