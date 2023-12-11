*** Settings ***

Resource    home_resources.robot
Test Setup    open url    ${url}
Test Teardown    close browser

*** Test Cases ***

#Below test cases are executed with standard user
Check Different Menu Items In Left Panel And Check Close Menu Button With Standard User
    [Documentation]    Check Different Menu Items In Left Panel And Check Close Menu Button With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on menu button
    check different menu items in left panel
    click on close menu button

Check Differ Filter Options Present With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    check different sort options available

Check Sorting Is Happening For Name From A-Z With Standard User
    [Documentation]    Check Sorting Is Happening For Name From A-Z With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on sort z a
    ${all_inventory_names_ascending_order}    get_all_inventory_name    False    True
    click on sort a z
    ${all_inventory_names}    get_all_inventory_name
    should be equal   ${all_inventory_names_ascending_order}    ${all_inventory_names}

Check Sorting Is Happening For Name From Z-A With Standard User
    [Documentation]    Check Sorting Is Happening For Name From Z-A With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    ${all_inventory_names_descending_order}    get_all_inventory_name    True    False
    click on sort z a
    ${all_inventory_names}    get_all_inventory_name
    should be equal   ${all_inventory_names_descending_order}    ${all_inventory_names}

Check Sorting Is Happening For Price From Low-High With Standard User
    [Documentation]    Check Sorting Is Happening For Price From Low-High With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    ${all_inventory_prices_ascending_order}    get_all_inventory_price    False    True
    click_on_sort_price_low_high
    ${all_inventory_prices}    get_all_inventory_price
    should be equal   ${all_inventory_prices_ascending_order}    ${all_inventory_prices}

Check Sorting Is Happening For Price From High-Low With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    ${all_inventory_prices_descending_order}    get_all_inventory_price    True    False
    click_on_sort_price_high_low
    ${all_inventory_prices}    get_all_inventory_price
    should be equal   ${all_inventory_prices_descending_order}    ${all_inventory_prices}

Check Twitter Page Is Getting Opend When Click On Twitter Icon With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on social media icon    Twitter
    switch to latest window
    ${current_page_title}    get current page title
    should contain    ${current_page_title}    X

Check Facebook Page Is Getting Opend When Click On Facebook Icon With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on social media icon    Facebook
    switch to latest window
    ${current_page_title}    get current page title
    should contain    ${current_page_title}    Facebook

Check Linkedin Page Is Getting Opend When Click On Linkedin Icon With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on social media icon    Linkedin
    switch to latest window
    ${current_page_title}    get current page title
    should contain    ${current_page_title}    LinkedIn

Check About Page Is Getting Opend When Click On About Menu With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on menu button
    click on about menu
    ${current_page_title}    get current page title
    should contain    ${current_page_title}    Sauce Labs: Cross Browser Testing, Selenium Testing & Mobile Testing

Check User Is Getting Logged Out When We Click On Logout Menu out With Standard User
    [Documentation]    Check Differ Filter Options Present With Standard User
    [Tags]    Home
    login to saucedemo    ${standard_user_name}    ${user_password}
    click on menu button
    click on logout menu menu
    ${current_page_title}    get current page title
    should contain    ${current_page_title}    Swag Labs
    check different web elements on login page


#Below test cases are executed with error user
Check Error Message When Try To Filter Products With 'Error User'
    [Documentation]    Check Error Message When Try To Filter Products With 'Error User'
    [Tags]    Home
    login to saucedemo    ${error_user}    ${user_password}
    check different sort options available
    click on sort z a
    alert_should_be_present    ${alert_text}
    click on sort price low high
    alert_should_be_present    ${alert_text}
    click on sort price high low
    alert_should_be_present    ${alert_text}
