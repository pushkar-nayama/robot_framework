*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${HEADER_LOGIN} =               Login
${TEXT_EMAIL} =                 email-id
${TEXT_PASSWORD} =              password
${BUTTON_SUBMIT} =              Submit

*** Keywords ***
Verify Sign In page loaded
    wait until page contains    ${HEADER_LOGIN}

Login to CRM
    [Arguments]                 ${email}                        ${password}
    input text                  ${TEXT_EMAIL}                    ${email}
    input password              ${TEXT_PASSWORD}                 ${password}
    click button                ${BUTTON_SUBMIT}

Fill "Email" Field
    [Arguments]                 ${email}
    input text                  ${TEXT_EMAIL}                    admin@robotframework.com

Fill "Password" Field
    [Arguments]                 ${password}
    input password              ${TEXT_PASSWORD}                 password

Click "Submit" Button
    click button                ${BUTTON_SUBMIT}