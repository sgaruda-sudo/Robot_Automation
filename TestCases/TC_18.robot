# Data input testing,test data in script
#Valid username invalid password and so on
#used datadownload framework library
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../Resources/TestData.csv
#Library    DataDriver    ../Resources/TestData1.xlsx         # To give any input file
Suite Setup    Open my browser     # Perform actions only once at start of tests like preconditions
Suite Teardown    CloseBrowsers
Test Template    Invalid Login

*** Test Cases ***
Login with Excel using ${username} and pwd ${password}    # depending on how many usernames,it runs those many times
*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}    # Pass form test Cases
    Input User Name    ${username}
    Input Password      ${password}
    click login button
    Login Page Unsucessfull
