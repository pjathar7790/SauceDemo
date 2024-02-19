*** Settings ***
Library    lib/Pages/Login/LoginPage.py
Library    lib/Pages/BasePage.py

Test Template    Login With Invalid Credentials Should Fail

*** Variables ***

${VALID PASSWORD}    secret_sauce
${VALID USER}    standard_user
${invalid}    invalid

*** Keywords ***

Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    LoginPage.Open Url     https://www.saucedemo.com/
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

Invalid User Name                 ${invalid}    ${VALID PASSWORD}
Invalid Password                  ${VALID USER}    ${invalid}
Invalid User Name and Password    ${invalid}       ${invalid}
Empty User Name                   ${EMPTY}         ${VALID PASSWORD}
Empty Password                    ${VALID USER}    ${EMPTY}
Empty User Name and Password      ${EMPTY}         ${EMPTY}





