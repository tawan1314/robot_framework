*** Settings ***
Resource    ${CURDIR}/../../../keyword/import.resource

*** Keywords ***
Verify elements on the products page
    [Arguments]    ${username}    ${password}
    Element Text Should Be        ${products_header}     ${products_page_element.header_lbl}
    Element Text Should Be        ${product_title}       ${products_page_element.title_lbl}
    BuiltIn.Sleep    1s
    burger_menu_btn_detail.Verify burger menu button options    ${username}    ${password}
    
Verify sort products option
    Click Element                 ${sort}
    BuiltIn.Sleep    1s
    Element Text Should Be        ${sort_a_z}                  ${products_page_element.sort.sort_a_z}
    Click Element                 ${sort_a_z}
    BuiltIn.Sleep    1s
    Element Text Should Be        ${sort_z_a}                  ${products_page_element.sort.sort_z_a}
    Click Element                 ${sort_z_a}
    BuiltIn.Sleep    1s
    Element Text Should Be        ${sort_price_low_high}       ${products_page_element.sort.sort_low_high}
    Click Element                 ${sort_price_low_high}
    BuiltIn.Sleep    1s
    Element Text Should Be        ${sort_price_high_low}       ${products_page_element.sort.sort_high_low}
    Click Element                 ${sort_price_high_low}
    BuiltIn.Sleep    1s

Verify all products on the products page
    Verify Sauce Labs Backpack details
    Verify Sauce Labs Bike Light details
    Verify Sauce Labs Bolt T-Shirt details
    Verify Sauce Labs Fleece Jacket details
    Verify Sauce Labs Onesie details
    Verify Test.allTheThings() T-Shirt (Red) details

Log out
    Wait Until Element Is Visible    ${burger_menu_button}
    Click Button    ${burger_menu_button}
    BuiltIn.Sleep    1s
    Click Button    ${close_burger_menu_button}
    BuiltIn.Sleep    1s
    burger_menu_btn_detail.Verify Logout element and logout
    BuiltIn.Sleep    1s
    Verify all element on the homepage

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
        BuiltIn.Sleep    1s
        Element Text Should Be    ${cart}    1
        Element Text Should Be    ${list}    ${products_page_element.remove_cart_lbl}
        Click Button    ${list}
        BuiltIn.Sleep    1s
        Element Text Should Be    ${cart}    ${EMPTY}
        Element Text Should Be    ${list}    ${products_page_element.add_to_cart_lbl}
        BuiltIn.Sleep    1s 
    END
