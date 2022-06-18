*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling alerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click button    xpath://button[contains(text(),'Click Me')]    #opens a alert
    #handle alert    dismiss
    alert should be present    Press a button!
    handle alert    dismiss