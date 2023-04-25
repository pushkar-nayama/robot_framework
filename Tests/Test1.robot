*** Settings ***
Documentation           This is some basic info about whole suite
Resource                ../Resources/CRM.robot
Resource                ../Resources/Common.robot
Test Setup              Common.Open Web Page
Test Teardown           Common.Close Browser

*** Variables ***
${EMAIL} =                      rf@framework.com
${PASSWORD} =                   password
*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about TEST
    [Tags]                      1001    Smoke   Customer
    CRM.Launch CRM Landing page page
    CRM.Login to CRM            ${EMAIL}            ${PASSWORD}
    CRM.Create New Customer