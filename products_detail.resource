*** Settings ***
Resource    C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\import.resource

*** Keywords ***
Verify Sauce Labs Backpack details
    Element Text Should Be        ${backpack_name}               ${products.backpack.name}
    # Element Text Should Be        ${backpack_image}              ${products.backpack.image}
    Element Text Should Be        ${backpack_description}        ${products.backpack.description}
    Element Text Should Be        ${backpack_price}              ${products.backpack.price}

Verify Sauce Labs Bike Light details
    Element Text Should Be        ${bike_light_name}               ${products.bike_light.name}
    # Element Text Should Be        ${bike_light_image}                ${products.backbike_lightpack.image}
    Element Text Should Be        ${bike_light_description}        ${products.bike_light.description}
    Element Text Should Be        ${bike_light_price}              ${products.bike_light.price}

Verify Sauce Labs Bolt T-Shirt details
    Element Text Should Be        ${bolt_t_shirt_name}               ${products.bolt_t_shirt.name}
    # Element Text Should Be        ${bolt_t_shirt_image}                  ${products.bolt_t_shirt.image}
    Element Text Should Be        ${bolt_t_shirt_description}        ${products.bolt_t_shirt.description}
    Element Text Should Be        ${bolt_t_shirt_price}              ${products.bolt_t_shirt.price}

Verify Sauce Labs Fleece Jacket details
    Element Text Should Be        ${jacket_name}               ${products.jacket.name}
    # Element Text Should Be        ${jacket_image}              ${products.jacket.image}
    Element Text Should Be        ${jacket_description}        ${products.jacket.description}
    Element Text Should Be        ${jacket_price}              ${products.jacket.price}

Verify Sauce Labs Onesie details
    Element Text Should Be        ${onesie_name}               ${products.onesie.name}
    # Element Text Should Be        ${onesie_image}              ${products.onesie.image}
    Element Text Should Be        ${onesie_description}        ${products.onesie.description}
    Element Text Should Be        ${onesie_price}              ${products.onesie.price}

Verify Test.allTheThings() T-Shirt (Red) details
    Element Text Should Be        ${t_shirt_red_name}               ${products.t_shirt_red.name}
    # Element Text Should Be        ${t_shirt_red_image}              ${products.t_shirt_red.image}
    Element Text Should Be        ${t_shirt_red_description}        ${products.t_shirt_red.description}
    Element Text Should Be        ${t_shirt_red_price}              ${products.t_shirt_red.price}