*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${logn_url}=    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${broswer}=    chrome

*** Keywords ***
Open my browser
    open browser    ${logn_url}     ${broswer}
    maximize browser window
CloseBrowsers
    close all browsers
Open Login Page
    go to    ${logn_url}
Input User Name
    [Arguments]    ${username}             # We pass username from TestCase
    input text    id:Email    ${username}
Input Password
    [Arguments]    ${password}
    input text    id:Password    ${password}
click login button
    click element    xpath://button[contains(text(),'Log in')]
click logout button
    click link    Logout
Dashboard page visible
    page should contain    Dashboard
Login Page Unsucessfull
    page should contain    Login was unsuccessful