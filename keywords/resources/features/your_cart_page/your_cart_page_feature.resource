*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource


*** Keywords ***

Verify your page elements
    Element Text Should Be      ${your_cart.header}     ${your_cart_element.header_lbl}

Click continue shopping button
    your_cart_page_feature.Verify your page elements
    Element Text Should Be      ${your_cart.continue_shopping}    ${your_cart_element.continue_shopping_btn}
    Click Element    ${your_cart.continue_shopping}
    products_page_feature.Verify elements on the products page
    Capture Page Screenshot

Click checkout button
    your_cart_page_feature.Verify your page elements
    Element Text Should Be      ${your_cart.check_out}    ${your_cart_element.checkout_btn}
    Click Element    ${your_cart.check_out}
    Capture Page Screenshot
