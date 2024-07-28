*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs


*** Test Cases ***
SL005 Verify all elements on the Products page
    [Documentation]                                                              USERNAME                 PASSWORD
    [Tags]    Swag_Labs    website    verify_feature    STD_USER    SL005
    home_page_feature.Login user                                            ${STD_USER.username}    ${STD_USER.password}
    Verify all of products
    products_page_feature.Click All Items
    products_page_feature.Click About
    SeleniumLibrary.Go Back
    products_page_feature.Click Logout
    home_page_feature.Login user                                            ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Click Reset App State
    Verify sort products option
    products_page_feature.Verify add to cart and remove button    ${products_page_products.products_page_backpack.name}


*** Keywords ***
Verify all of products
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_backpack.name}        ${products_page_products.products_page_backpack.description}        ${products_page_products.products_page_backpack.price}
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_bike_light.name}      ${products_page_products.products_page_bike_light.description}      ${products_page_products.products_page_bike_light.price}
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_bolt_t_shirt.name}    ${products_page_products.products_page_bolt_t_shirt.description}    ${products_page_products.products_page_bolt_t_shirt.price}
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_jacket.name}          ${products_page_products.products_page_jacket.description}          ${products_page_products.products_page_jacket.price}
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_onesie.name}          ${products_page_products.products_page_onesie.description}          ${products_page_products.products_page_onesie.price}
    products_page_feature.Verify product on the products page    ${products_page_products.products_page_t_shirt_red.name}     ${products_page_products.products_page_t_shirt_red.description}     ${products_page_products.products_page_t_shirt_red.price}

Verify sort products option
    products_page_feature.Sort products    ${products_page_element.products_page_sort.products_page_sort_a_z}
    products_page_feature.Sort products    ${products_page_element.products_page_sort.products_page_sort_z_a}
    products_page_feature.Sort products    ${products_page_element.products_page_sort.products_page_sort_low_high}
    products_page_feature.Sort products    ${products_page_element.products_page_sort.products_page_sort_high_low}
