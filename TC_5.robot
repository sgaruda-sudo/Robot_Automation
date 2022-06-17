*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    maximize browser window
    open browser    https://www.google.com/    chrome
    maximize browser window
    #close browser    #closes only the latest opened broswer
    set selenium speed     2 seconds
    close all browsers    #closes all opened broswer