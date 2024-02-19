*** Settings ***
Library    lib/Pages/Login/LoginPage.py
Library    lib/Pages/BasePage.py

*** Variables ***
${VALID PASSWORD}    secret_sauce
${VALID USER}    standard_user
${invalid}    invalid
${url}    https://www.saucedemo.com/

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    LoginPage.Open Url     ${url}
    login to saucedemo    ${username}    ${password}
    IF    '${username}'=='${invalid}' and '${password}'=='${VALID PASSWORD}'
        verify error message for wrong credentials
    END
    IF    '${username}'=='${VALID USER}' and '${password}'=='${invalid}'
        verify error message for wrong credentials
    END
    IF    '${username}'=='${invalid}' and '${password}'=='${invalid}'
        verify error message for wrong credentials
    END
    IF    '${username}'=='${EMPTY}' and '${password}'=='${VALID PASSWORD}'
        verify error message for empty username
    END
    IF    '${username}'=='${VALID USER}' and '${password}'=='${EMPTY}'
        verify error message for empty password
    END
    IF    '${username}'=='${EMPTY}' and '${password}'=='${EMPTY}'
        verify error message for empty username
    END
     LoginPage.Close Browser

*** Test Cases ***
Data Driven Test Case
    [Template]    Login With Invalid Credentials Should Fail
    ${invalid}       ${VALID PASSWORD}
    ${VALID USER}    ${invalid}
    ${invalid}       ${invalid}
    ${EMPTY}         ${VALID PASSWORD}
    ${VALID USER}    ${EMPTY}
    ${EMPTY}         ${EMPTY}

Normal Test Case
    LoginPage.Open Url    ${url}
    login to saucedemo      ${VALID USER}   ${VALID PASSWORD}
    verify saucedemo home page after login








