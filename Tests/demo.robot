*** Settings ***
Resource        ../Resources/DemoResource.robot
Library         SeleniumLibrary

*** Variables ***
${MY_VARIABLE}  =   This is my local data

*** Test Cases ***
List Variable Test Case
    Log         ${MY_VARIABLE}

Set Variable Test Case
    ${new_variable} =   set variable    My New Variable
    log         ${new_variable}
    Log         ${MY_VARIABLE}