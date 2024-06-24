*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Verify elements on the products page
    Element Text Should Be        ${products_header}     ${products_page_element.header_lbl}
    Element Text Should Be        ${product_title}       ${products_page_element.title_lbl}
    
Verify sort products option
    Click Element                 ${sort}
    Element Text Should Be        ${sort_a_z}                  ${products_page_element.sort.sort_a_z}
    Click Element                 ${sort_a_z}
    Element Text Should Be        ${sort_z_a}                  ${products_page_element.sort.sort_z_a}
    Click Element                 ${sort_z_a}
    Element Text Should Be        ${sort_price_low_high}       ${products_page_element.sort.sort_low_high}
    Click Element                 ${sort_price_low_high}
    Element Text Should Be        ${sort_price_high_low}       ${products_page_element.sort.sort_high_low}
    Click Element                 ${sort_price_high_low}

Verify all products on the products page
    Verify Sauce Labs Backpack details
    Verify Sauce Labs Bike Light details
    Verify Sauce Labs Bolt T-Shirt details
    Verify Sauce Labs Fleece Jacket details
    Verify Sauce Labs Onesie details
    Verify Test.allTheThings() T-Shirt (Red) details

Verify add to cart button
    ${list_add_to_cart}    Create List    
    ...    ${backpack_add_to_cart}    
    ...    ${bike_light_add_to_cart}    
    ...    ${bolt_t_shirt_add_to_cart}    
    ...    ${jacket_add_to_cart}    
    ...    ${onesie_add_to_cart}    
    ...    ${t_shirt_red_add_to_cart}
    FOR  ${list}  IN  @{list_add_to_cart}
        Element Text Should Be    ${cart}    ${EMPTY}
        Element Text Should Be    ${list}    ${products_page_element.add_to_cart_lbl}
        Click Button    ${list}
        Element Text Should Be    ${cart}    1
        Element Text Should Be    ${list}    ${products_page_element.remove_cart_lbl}
        Click Button    ${list}
        Element Text Should Be    ${cart}    ${EMPTY}
        Element Text Should Be    ${list}    ${products_page_element.add_to_cart_lbl}
    END

Log out
    Click Button    ${burger_menu_button}
    BuiltIn.Sleep    1s
    Click Button    ${close_burger_menu_button}
    burger_menu_btn_detail.Verify Logout element and logout
    Verify all element on the homepage