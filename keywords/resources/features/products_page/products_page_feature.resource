*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Verify elements on the products page
    Element Text Should Be        ${products_header}     ${products_page_element.header_lbl}
    Element Text Should Be        ${product_title}       ${products_page_element.title_lbl}
    
Verify sort products option
    Click Element                 ${sort}
    Capture Element Screenshot    ${sort}
    Element Text Should Be        ${sort_a_z}                  ${products_page_element.sort.sort_a_z}
    Click Element                 ${sort_a_z}
    Capture Page Screenshot
    Element Text Should Be        ${sort_z_a}                  ${products_page_element.sort.sort_z_a}
    Click Element                 ${sort_z_a}
    Capture Page Screenshot
    Element Text Should Be        ${sort_price_low_high}       ${products_page_element.sort.sort_low_high}
    Click Element                 ${sort_price_low_high}
    Capture Page Screenshot
    Element Text Should Be        ${sort_price_high_low}       ${products_page_element.sort.sort_high_low}
    Click Element                 ${sort_price_high_low}
    Capture Page Screenshot

Verify all products on the products page
    Verify Sauce Labs Backpack details
    Click Element    ${backpack_image}
    Capture Page Screenshot
    Go Back
    Verify Sauce Labs Bike Light details
    Click Element    ${bike_light_image}
    Capture Page Screenshot
    Go Back
    Verify Sauce Labs Bolt T-Shirt details
    Click Element    ${bolt_t_shirt_image}
    Capture Page Screenshot
    Go Back
    Verify Sauce Labs Fleece Jacket details
    Click Element    ${jacket_image}
    Capture Page Screenshot
    Go Back
    Verify Sauce Labs Onesie details
    Click Element    ${onesie_image}
    Capture Page Screenshot
    Go Back
    Verify Test.allTheThings() T-Shirt (Red) details
    Click Element    ${t_shirt_red_image}
    Capture Page Screenshot
    Go Back

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
        Capture Element Screenshot           ${list}
        Click Button    ${list}
        Element Text Should Be    ${cart}    ${EMPTY}
        Element Text Should Be    ${list}    ${products_page_element.add_to_cart_lbl}
        Capture Element Screenshot           ${list}
    END

# Add a products to the cart
#     [Arguments]    ${product}
#     Element Text Should Be    ${product}    ${products_page_element.add_to_cart_lbl}
#     Click Button              ${product}