*** Settings ***
Resource        ../Resources/DemoResource.robot
Library         SeleniumLibrary
Library                     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Pass Arguments to Keyword
    #Open Web Browser       https://google.com  safari
    @{url_browser}          set variable        https://google.com  safari
    #Open Web Browser        ${url_browser}[0]   ${url_browser}[1]
    Open Web Browser        @{url_browser}
    close all browsers

*** Keywords ***
Open Web Browser
    [Arguments]             @{url_browser}
    open browser            ${url_browser}[0]   ${url_browser}[1]


#Open Web Browser
#    [Arguments]             ${URL}              ${BROWSER}
#    open browser            ${URL}              ${BROWSER}