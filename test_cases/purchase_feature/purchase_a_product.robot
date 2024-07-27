*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs


*** Test Cases ***
Purchase a product
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Verify elements on the products page
    products_page_feature.Verify add to cart button
    products_page_feature.Click cart button
    your_cart_page_feature.Click continue shopping button
    products_page_feature.Click cart button
    your_cart_page_feature.Click checkout button
