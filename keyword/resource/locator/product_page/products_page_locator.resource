*** Variables ***
${products_header}             xpath:/html/body/div/div/div/div[1]/div[1]/div[2]/div
${burger_menu_button}          xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[1]/div/button
${close_burger_menu_button}    xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[2]/div[2]/div/button
${all_items}                   xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[2]/div[1]/nav/a[1]
${about}                       xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[2]/div[1]/nav/a[2]
${logout}                      xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[2]/div[1]/nav/a[3]
${reset_app_state}             xpath:/html/body/div/div/div/div[1]/div[1]/div[1]/div/div[2]/div[1]/nav/a[4]
${product_title}               xpath:/html/body/div/div/div/div[1]/div[2]/span

# products names
${backpack_name}                xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div
${bike_light_name}              xpath:/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[1]/a/div
${bolt_t_shirt_name}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[1]/a/div
${jacket_name}                  xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[1]/a/div
${onesie_name}                  xpath:/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[1]/a/div
${t_shirt_red_name}             xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[1]/a/div

# products images
${backpack_image}                xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img
${bike_light_image}              xpath:/html/body/div/div/div/div[2]/div/div/div/div[2]/div[1]/a/img
${bolt_t_shirt_image}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[1]/a/img
${jacket_image}                  xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[1]/a/img
${onesie_image}                  xpath:/html/body/div/div/div/div[2]/div/div/div/div[5]/div[1]/a/img
${t_shirt_red_image}             xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[1]/a/img

# products description
${backpack_description}          xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/div
${bike_light_description}        xpath:/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[1]/div
${bolt_t_shirt_description}      xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[1]/div
${jacket_description}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[1]/div
${onesie_description}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[1]/div
${t_shirt_red_description}       xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[1]/div

# products prices
${backpack_price}          xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[2]/div
${bike_light_price}        xpath:/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[2]/div
${bolt_t_shirt_price}      xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[2]/div
${jacket_price}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[2]/div
${onesie_price}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[2]/div
${t_shirt_red_price}       xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[2]/div

# add products to cart
${cart}                          xpath:/html/body/div/div/div/div[1]/div[1]/div[3]/a
${backpack_add_to_cart}          xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[2]/button
${bike_light_add_to_cart}        xpath:/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[2]/button
${bolt_t_shirt_add_to_cart}      xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[2]/button
${jacket_add_to_cart}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[2]/button
${onesie_add_to_cart}            xpath:/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[2]/button
${t_shirt_red_add_to_cart}       xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[2]/button

# sort products
${sort}                    xpath:/html/body/div/div/div/div[1]/div[2]/div/span/select
${sort_a_z}                xpath:/html/body/div/div/div/div[1]/div[2]/div/span/select/option[1]
${sort_z_a}                xpath:/html/body/div/div/div/div[1]/div[2]/div/span/select/option[2]
${sort_price_low_high}     xpath:/html/body/div/div/div/div[1]/div[2]/div/span/select/option[3]
${sort_price_high_low}     xpath:/html/body/div/div/div/div[1]/div[2]/div/span/select/option[4]
