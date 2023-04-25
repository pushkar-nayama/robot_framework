*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${BROWSER} =                    Chrome
${URL} =                        https://automationplayground.com/crm/

*** Keywords ***
Open Web Page
    set selenium speed          .2s
    set selenium timeout        10s
    log                         Starting the test case
    open browser                about:blank                 ${BROWSER}
    maximize browser window

Close Browser
    close all browsers