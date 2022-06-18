*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}    chrome

*** Test Cases ***
TC_1
    # x = func(key1,key2)
    ${app_title}=  launchBrowser    ${url}    ${browser}
    input text    name:txtUsername    Admin
    input text    id:txtPassword    admin123
    log to console   ${app_title}
    log    ${app_title}    #This is available in log.html



