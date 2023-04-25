*** Settings ***
Resource                        PageObject/LandingPage.robot
Resource                        PageObject/SignInPage.robot
Resource                        PageObject/CustomersPage.robot
Resource                        PageObject/AddCustomerPage.robot

*** Keywords ***
Launch CRM Landing page page
    LandingPage.Launch CRM App

Login to CRM
    [Arguments]                             ${email}            ${password}
    LandingPage.Verify page loaded
    LandingPage.Click "Sign In" link
    SignInPage.Verify Sign In page loaded
    SignInPage.Login to CRM                 ${email}            ${password}

Create New Customer
    CustomersPage.Verify User Signed In
    CustomersPage.Click New Customer Button
    AddCustomerPage.Add New Customer