*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource


*** Keywords ***
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
    [Arguments]    
    ...    ${item_1}=${OPTIONS}
    ...    ${item_2}=${OPTIONS}
    ...    ${item_3}=${OPTIONS}
    ...    ${item_4}=${OPTIONS}
    ...    ${item_5}=${OPTIONS}
    ...    ${item_6}=${OPTIONS}
    ${list_add_to_cart}    Create List    
    ...    ${item_1}    
    ...    ${item_2}    
    ...    ${item_3}    
    ...    ${item_4}    
    ...    ${item_5}    
    ...    ${item_6}
    ${number_of_item}    Evaluate    len(${list_add_to_cart})
    FOR  ${item}  IN  @{list_add_to_cart}
        Element Text Should Be    ${cart}    ${EMPTY}
        Run Keyword And Ignore Error    
        ...    Element Text Should Be    ${item}    ${products_page_element.add_to_cart_lbl}
    END
    Run Keyword And Ignore Error    Click Button    ${item}
    Run Keyword And Ignore Error    Element Text Should Be    ${cart}    ${number_of_item}
    Capture Page Screenshot

Click cart button
    Click Element   ${cart}
    Capture Page Screenshot