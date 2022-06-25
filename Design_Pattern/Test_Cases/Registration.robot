*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser} =    chrome
${site_url}=    https://demo.guru99.com/test/newtours/index.php


*** Test Cases ***
Registration_Test
    Open my browser    ${site_url}    ${browser}
    Click registartion Link
    Enter Name    .
    Enter LastName    .
    Clicking Submit
    Click Sucessfull