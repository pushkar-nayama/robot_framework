*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${BUTTON_NEW_CUSTOMER} =        id=new-customer
${HEADER_NEW_CUSTOMER} =        Add Customer
${HEADER_SING_IN_PAGE} =        Our Happy Customers

*** Keywords ***
Click New Customer Button
    click link                  ${BUTTON_NEW_CUSTOMER}
    wait until page contains    ${HEADER_NEW_CUSTOMER}

Verify User Signed In
    wait until page contains    ${HEADER_SING_IN_PAGE}
