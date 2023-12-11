*** Settings ***
Resource  login_resources.robot
Test Setup    open url    ${url}
Test Teardown    close browser
*** Test Cases ***


Login To SauceDemo Application With Standard User
    [Documentation]    Login To SauceDemo Application With Standard User
    [Tags]      Login
    login to saucedemo    ${standard_user_name}    ${user_password}
    verify saucedemo home page after login

Login To SauceDemo Application With Wrong Credentials
    [Documentation]    Login To SauceDemo Application With Wrong Credentials
    [Tags]      Login
    login to saucedemo    ${standard_user_name}_test    ${user_password}_test
    verify error message for wrong credentials

Login To SauceDemo Application With Empty Username
    [Documentation]    Login To SauceDemo Application With Empty Username
    [Tags]      Login
    login to saucedemo    ${EMPTY}    ${user_password}
    verify error message for empty username

Login To SauceDemo Application With Empty Password
    [Documentation]    Login To SauceDemo Application With Empty Password
    [Tags]      Login
    login to saucedemo    ${standard_user_name}    ${EMPTY}
    verify error message for empty password

Login To SauceDemo Application With Locked Out User
    [Documentation]    Login To SauceDemo Application With Locked Out User
    [Tags]      Login
    login to saucedemo    ${locked_out_user}    ${user_password}
    verify error message for locked out user

Login To SauceDemo Application With Problem User
    [Documentation]    Login To SauceDemo Application With Problem User
    [Tags]      Login
    login to saucedemo    ${problem_user}    ${user_password}
    verify saucedemo home page after login

Login To SauceDemo Application With Performance Glitch User
    [Documentation]    Login To SauceDemo Application With Performance Glitch User
    [Tags]      Login
    login to saucedemo    ${performance_glitch_user}    ${user_password}
    verify saucedemo home page after login

Login To SauceDemo Application With Error User
    [Documentation]    Login To SauceDemo Application With Error User
    [Tags]      Login
    login to saucedemo    ${error_user}    ${user_password}
    verify saucedemo home page after login

Login To SauceDemo Application With Visual User
    [Documentation]    Login To SauceDemo Application With Visual User
    [Tags]      Login
    login to saucedemo    ${visual_user}    ${user_password}
    verify saucedemo home page after login
