*** Settings ***

Library    ../lib/Main.py


*** Variables ***

${url}    https://www.saucedemo.com/
${standard_user_name}    standard_user
${user_password}    secret_sauce
${locked_out_user}    locked_out_user
${problem_user}    problem_user
${performance_glitch_user}    performance_glitch_user
${error_user}    error_user
${visual_user}    visual_user

*** Keywords ***


Add Single Product To Cart And Verify Same Product Got Added To Cart
    [Arguments]    ${product_no}
    ${name}    get product name    ${product_no}
    ${price}    get product price    ${product_no}
    ${image_name}    get product image name    ${product_no}
    click on add to cart button    ${product_no}
    click on shopping cart
    ${details}    get details of product added in cart    ${product_no}
    should be equal as strings    ${details}[0]    ${name}
    should be equal as strings    ${details}[1]    ${price}

Add Multiple Products To Cart And Verify Same Product Got Added To Cart
    [Arguments]    ${no_of_products_to_add}
    FOR    ${i}   IN RANGE   1    ${no_of_products_to_add}
        ${i}    convert to string  ${i}
        Add Single Product To Cart And Verify Same Product Got Added To Cart    ${i}
        click on continue shopping button
    END
