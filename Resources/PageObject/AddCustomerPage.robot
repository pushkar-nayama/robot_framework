*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${TEXT_EMAIL_ADDRESS} =         id=EmailAddress
${TEXT_FIRST_NAME} =            id=FirstName
${TEXT_LAST_NAME} =             id=LastName
${TEXT_CITY} =                  id=City
${DROPDOWN_STATE_OR_REGION} =   id=StateOrRegion
${RADIO_GENDER} =               gender
${CHECKBOX_PROMOS} =            name=promos-name
${BUTTON_SUBMIT} =              Submit
${SUCCESS_MESSAGE} =            Success! New customer added.

*** Keywords ***
Add New Customer
    input text                  ${TEXT_EMAIL_ADDRESS}           admin@robotframework.com
    input text                  ${TEXT_FIRST_NAME}              Test
    input text                  ${TEXT_LAST_NAME}               User
    input text                  ${TEXT_CITY}                    Maxico
    select from list by value   ${DROPDOWN_STATE_OR_REGION}     TX
    select radio button         ${RADIO_GENDER}                 male
    select checkbox             ${CHECKBOX_PROMOS}
    click button                ${BUTTON_SUBMIT}
    wait until page contains    ${SUCCESS_MESSAGE}
    sleep                       10s