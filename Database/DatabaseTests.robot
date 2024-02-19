*** Settings ***

Library  DatabaseLibrary
Library  Collections

*** Variables ***
${DBName}    test
${DBUser}    root
${DBPass}    root
${DBHost}    localhost
${DBPort}    3306

*** Keywords ***

*** Test Cases ***

Test
    connect to database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
    ${response}    query    select * from persons;    returnAsDict=True    #list of dict #each row as a dict
    ${type}    evaluate    type($response)    #dict
    ${dict}  get from list    ${response}    0               #get first row
    #validation 1
    ${firstname}    get from dictionary    ${dict}    FirstName
    should be equal as strings    ${firstname}    Prathamesh
    #validation 2
    ${str}    convert to string    ${response}
    should contain     ${str}    Prathamesh



