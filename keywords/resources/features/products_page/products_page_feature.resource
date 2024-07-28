*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource


*** Keywords ***
Verify all elements on products page
    Verify header on the page    ${products_page.header_lbl}    ${products_page_element.products_page_header_lbl}

Verify product on the products page
    [Arguments]    ${product_name}    ${product_description}    ${product_price}
    Verify element on the page    ${products_page.item_name}            ${product_name}
    Verify element on the page    ${products_page.item_description}     ${product_description}
    Verify element on the page    ${products_page.item_price}           ${product_price}

Sort products
    [Arguments]    ${sort_option}
    common_feature.Click element when ready      ${products_page.sort_option}    ${sort_option}
    common_feature.Capture Page

Verify add to cart and remove button
    [Arguments]    
    ...    ${item_name_1}
    ...    ${item_name_2}=${null}
    ...    ${item_name_3}=${null}
    ...    ${item_name_4}=${null}
    ...    ${item_name_5}=${null}
    ...    ${item_name_6}=${null}
    ${product_list}    Create List
    ...    ${item_name_1}
    ...    ${item_name_2}
    ...    ${item_name_3}
    ...    ${item_name_4}
    ...    ${item_name_5}
    ...    ${item_name_6}
    FOR  ${item}  IN  @{product_list}
        Run Keyword And Ignore Error    Add an item to cart         ${item}     ${products_page.item_add_to_cart}
        Run Keyword And Ignore Error    Remove an item from cart    ${item}     ${products_page.item_remove}
    END

Add an item to cart
    [Arguments]    ${item_name}    ${item_locator}
    common_feature.Change item name format to click element    ${item_name}    ${item_locator}

Remove an item from cart
    [Arguments]    ${item_name}    ${item_locator}
    common_feature.Change item name format to click element    ${item_name}    ${item_locator}

Click burger button
    Run Keyword And Ignore Error    common_feature.Click close button      ${products_page.burger_menu_button}

Close burger button
    common_feature.Click close button      ${products_page.close_burger_menu_button}

Click All Items
    Click burger button
    common_feature.Click element when ready      ${products_page.burger_menu_items}    ${products_page_element.products_page_burger_menu.products_page_all_items_lbl}
    Verify all elements on products page
    common_feature.Capture Page

Click About
    Click burger button
    common_feature.Click element when ready      ${products_page.burger_menu_items}    ${products_page_element.products_page_burger_menu.products_page_about_lbl}
    common_feature.Capture Page

Click Logout
    Click burger button
    common_feature.Click element when ready      ${products_page.burger_menu_items}    ${products_page_element.products_page_burger_menu.products_page_logout_lbl}
    common_feature.Capture Page

Click Reset App State
    Click burger button
    common_feature.Click element when ready      ${products_page.burger_menu_items}    ${products_page_element.products_page_burger_menu.products_page_reset_app_state_lbl}
    common_feature.Capture Page

Logout Swag Labs
    Click burger button
    Close burger button
    Click Logout
    home_page_feature.Verify all elements on homepage
