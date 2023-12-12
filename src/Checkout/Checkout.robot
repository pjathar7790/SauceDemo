*** Settings ***
Resource    checkout_resources.robot
Test Setup    open url    ${url}
Test Teardown    close browser

*** Test Cases ***

#Below test cases are with with standard user
Check When We Click On Checkout Button On 'Cart' Page 'Checkout: Your Information' Page Is Getting Opened
    [Documentation]    Check When We Click On Checkout Button On 'Cart' Page 'Checkout: Your Information' Page Is Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    check different web elements on checkout your info page

Check When we click on Cancel Button On 'Checkout: Your Information' Page 'Cart' Page Getting Opened
    [Documentation]    Check When we click on Cancel Button On 'Checkout: Your Information' Page 'Cart' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    click on cancel button
    check different web elements on cart page

Check Error Message For Empty FirstName On Checkout:Your Information Page
    [Documentation]    Check Validation For Empty FirstName On Checkout:Your Information Page
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${EMPTY}    ${lastname}    ${postal_code}
    click on continue button
    ${actual_error_message}    get error message on checkout page
    should be equal as strings      ${actual_error_message}    ${expected_error_message_firstname}

Check Error Message For Empty LastName On Checkout:Your Information Page
    [Documentation]    Check Error Message For Empty LastName On Checkout:Your Information Page
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${EMPTY}    ${postal_code}
    click on continue button
    ${actual_error_message}    get error message on checkout page
    should be equal as strings      ${actual_error_message}    ${expected_error_message_lasttname}

Check Error Message For Empty Postalcode On Checkout:Your Information Page
    [Documentation]    Check Error Message For Empty Postalcode On Checkout:Your Information Page
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${EMPTY}
    click on continue button
    ${actual_error_message}    get error message on checkout page
    should be equal as strings      ${actual_error_message}    ${expected_error_message_postalcode}

Check When we click on Continue Button On 'Checkout: Your Information' Page 'Checkout: Overview' Page Getting Opened
    [Documentation]    Check When we click on Continue Button On 'Checkout: Your Information' Page 'Checkout: Overview' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    check different web elements on checkout overview_page

Check When we click on Cancel Button On 'Checkout: Overview' Page 'Home' Page Getting Opened
    [Documentation]    Check When we click on Cancel Button On 'Checkout: Overview' Page 'Home' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    click on cancel button
    verify saucedemo home page after login

Check When we click on Finish Button On 'Checkout: Overview' Page 'Checkout: Complete' Page Getting Opened
    [Documentation]    Check When we click on Finish Button On 'Checkout: Overview' Page 'Checkout: Complete' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    click on finish button
    check different web elements on checkout complete page

Check When we click on 'Back Home' Button On 'Checkout: Complete' Page 'Home' Page Getting Opened
    [Documentation]    Check When we click on 'Back Home' Button On 'Checkout: Complete' Page 'Home' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${standard_user_name}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    click on finish button
    check different web elements on checkout complete page
    click on back to home button
    verify saucedemo home page after login

#Below test cases are executed with error user
Check 'Error User' Is Not Able To Click On Finish Button On 'Checkout: Overview' Page
    [Documentation]    Check When we click on 'Back Home' Button On 'Checkout: Complete' Page 'Home' Page Getting Opened
    [Tags]    Checkout
    login to saucedemo    ${error_user}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    click on finish button
    check different web elements on checkout overview_page

#Below test cases are executed with problem user
Check 'Problem User' Is Not Able To Click On Continue Button On 'Checkout: Your Information' Page As Last Name Is Not Getting Typed
    [Documentation]    Check 'Problem User' Is Not Able To Click On Continue Button On 'Checkout: Your Information' Page As Last Name Is Not Getting Typed
    [Tags]    Checkout
    login to saucedemo    ${problem_user}    ${user_password}
    Add Single Product To Cart And Verify Same Product Got Added To Cart    1
    click on checkout button
    enter details on checkout information page    ${firstname}    ${lastname}    ${postal_code}
    click on continue button
    check different web elements on checkout your info page
