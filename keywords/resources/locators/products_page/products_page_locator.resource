*** Variables ***
${products_page.header_lbl}                  xpath=//span[contains(., "***string***")]
${products_page.burger_menu_button}          xpath=//button[@id="react-burger-menu-btn"]
${products_page.close_burger_menu_button}    xpath=//button[@id="react-burger-cross-btn"]
${products_page.burger_menu_items}           xpath=//a[contains(., "***string***")]
${products_page.item_name}                   xpath=//div[contains(., "***string***")]
${products_page.item_description}            xpath=//div[contains(., "***string***")]
${products_page.item_price}                  xpath=//div[contains(., "***string***")]
${products_page.cart}                        xpath=//a[@id="shopping_cart_container"]/a
${products_page.item_add_to_cart}            xpath=//button[@name="add-to-cart-***item_name***"]
${products_page.item_remove}                 xpath=//button[@name="remove-***item_name***"]
${products_page.sort_option}                 xpath=//option[contains(., "***string***")]
