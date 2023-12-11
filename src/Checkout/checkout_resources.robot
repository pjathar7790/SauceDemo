*** Settings ***
Resource    ../../src/main_resources.robot
*** Variables ***
${expected_error_message_firstname}    Error: First Name is required
${expected_error_message_lasttname}    Error: Last Name is required
${expected_error_message_postalcode}    Error: Postal Code is required
${firstname}    abc
${lastname}     xyz
${postal_code}    411041

*** Keywords ***
