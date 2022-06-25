*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_keywords.robot

*** Variables ***
${browser}=  chrome
${site_url}=    https://demo.guru99.com/test/newtours/index.php
${login_username}=    tutorial
${login_password}=    tutorial

*** Test Cases ***
Login Test
    Open my browser    ${site_url}    ${browser}
    Enter username    ${login_username}
    Enter password    ${login_password}
    Click Signin
    Login Successful Login
    close my browsers