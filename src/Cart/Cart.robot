*** Settings ***
Resource    cart_resources.robot
Test Setup    open url    ${url}
Test Teardown    close browser

*** Test Cases ***

Check Different Web Elements On Home Page With Standard User
    [Documentation]    Login With Standard User And Check Different Web Elements On Home Page
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    verify saucedemo home page after login
    verify different web elements on home page

Check Product Details When We click On Product on Home Page With Standard User
    [Documentation]    Check Product Details When We click On Product on Home Page
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    ${name_home_page}    get product name    1
    ${price_home_page}    get product price    1
    ${image_name_home_page}    get product image name    1
    view details of product    1
    ${product_details}    get details of product on product details page    1
    should be equal as strings    ${name_home_page}    ${product_details}[0]
    should be equal as strings    ${price_home_page}    ${product_details}[1]
    should be equal as strings    ${image_name_home_page}    ${product_details}[2]

Check Continue Shopping Functionality With Standard User
    [Documentation]    Check Continue Shopping Functionality
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on shopping cart
    click on continue shopping button
    verify different web elements on home page
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on continue shopping button
    verify different web elements on home page

Check Back To Product Functionality With Standard User
    [Documentation]    Check Back To Product Functionality
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    view details of product    1
    click on back to product
    verify different web elements on home page

Check Single Product Getting Added To Cart Successfully With Standard User
    [Documentation]    Check Single Product Getting Added To Cart Successfully With Standard User
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1

Check Multiple Products Getting Added To Cart Successfully With Standard User
    [Documentation]    Check Two Product Getting Added To Cart Successfully With Standard User
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Multiple Products To Cart And Verify Same Product Got Added To Cart    5

Check Product Getting Removed Successfully From Home Page Remove Button With Standard User
    [Documentation]    Check Product Getting Removed Successfully From Home Page Remove Button With Standard User
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on continue shopping button
    click on remove from cart button homepage    1
    check cart is empty

Check Product Getting Removed Successfully From Cart Using Cart Remove Button With Standard User
    [Documentation]    Check Product Getting Removed Successfully From Cart With Standard User
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on remove from cart button cartpage    1
    check cart is empty

Check Multiple Products Getting Removed Successfully From Cart Using Cart Remove Button With Standard User
    [Documentation]    Check Product Getting Removed Successfully From Cart With Standard User
    [Tags]    Cart
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Multiple Products To Cart And Verify Same Product Got Added To Cart    3
    click on shopping cart
    Remove Multiple Products From Cart Using Remove button on cart page    3
    check cart is empty



#Below test cases are executed with error user
Check Product Added From Home Page Is Not Getting Removed From Home Page Remove Button With Error User
    [Documentation]    Check Single Product Getting Added To Cart Successfully With Standard User
    [Tags]    Cart
    login to saucedemo    ${error_user}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on continue shopping button
    click on remove from cart button homepage    1
    click on shopping cart
    check cart is not empty

#Below test cases are executed with problem user
Check Product Added From Home Page Is Not Getting Removed From Home Page Remove Button With Problem User
    [Documentation]    Check Single Product Getting Added To Cart Successfully With Standard User
    [Tags]    Cart
    login to saucedemo    ${problem_user}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on continue shopping button
    click on remove from cart button homepage    1
    click on shopping cart
    check cart is not empty


