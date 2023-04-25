*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${HEADER_LANDING_PAGE} =        Customers Are Priority One!
${LINK_SING_IN} =               SignIn

*** Keywords ***
Launch CRM App
   go to                       ${URL}
   wait until page contains    ${HEADER_LANDING_PAGE}

Click "Sign In" link
    click link                  ${LINK_SING_IN}

Verify page loaded
    wait until page contains    ${HEADER_LANDING_PAGE}