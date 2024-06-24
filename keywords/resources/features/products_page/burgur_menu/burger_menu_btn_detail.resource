*** Settings ***
Resource    ${CURDIR}/../../../../library/import.resource

*** Keywords ***
Verify burger menu button options
    [Arguments]    ${username}    ${password}
    Verify All Items element
    Verify About element
    Go Back
    Verify Logout element and logout
    home_page_feature.Login user    ${username}    ${password}
    Verify Reset App State element

Verify All Items element
    Click Button                  locator=${burger_menu_button}
    BuiltIn.Sleep    1s
    Element Text Should Be        locator=${all_items}           expected=${products_page_element.three_line_tap.all_items_lbl}
    Click Element                 locator=${all_items}
    products_page_feature.Verify all products on the products page
    Click Button                  ${close_burger_menu_button}

Verify About element
    Click Button                  locator=${burger_menu_button}
    BuiltIn.Sleep    1s
    Element Text Should Be        locator=${about}               expected=${products_page_element.three_line_tap.about_lbl}
    Click Element                 locator=${about}

Verify Logout element and logout
    Click Button                  locator=${burger_menu_button}
    BuiltIn.Sleep    1s
    Element Text Should Be        locator=${logout}              expected=${products_page_element.three_line_tap.logout_lbl}
    Click Element                 locator=${logout}

Verify Reset App State element
    Click Button                  locator=${burger_menu_button}
    BuiltIn.Sleep    1s
    Element Text Should Be        locator=${reset_app_state}     expected=${products_page_element.three_line_tap.reset_app_state_lbl}
    Click Element                 locator=${reset_app_state}
    Click Button                  ${close_burger_menu_button}