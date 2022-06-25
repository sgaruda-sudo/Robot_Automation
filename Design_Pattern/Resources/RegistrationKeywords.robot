*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_Objects/locators.py

*** Keywords ***
Open my browser    # Arguments are obtained from testcase!!!
    [Arguments]    ${site_url}    ${browser}
    open browser    ${site_url}    ${browser}
    maximize browser window

Click registartion Link
    click button    ${link_reg}

Enter Name
    [Arguments]    ${user_fname}
    input text    ${f_name}    ${user_fname}

Enter LastName
    [Arguments]    ${user_lname}
    input text    ${l_name}    ${user_lname}
Clicking Submit
    click button    ${submit}

Click Sucessfull
    page should contain    Thank you for registering