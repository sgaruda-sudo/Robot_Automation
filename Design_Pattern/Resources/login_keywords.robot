*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_objects/locators.py

*** Keywords ***
Open my browser    # Arguments are obtained from testcase!!!
    [Arguments]    ${site_url}    ${browser}
    open browser    ${site_url}    ${browser}
    maximize browser window
Enter username
    [Arguments]    ${user_name}
    input text    ${txt_loginusername}    ${user_name}
Enter password
    [Arguments]    ${password}
    input text    ${txt_loginpassword}      ${password}
Click Signin
    click button    ${submit_btn}
Login Successful Login
    page should contain    Login Successfully
close my browsers
    close all browsers