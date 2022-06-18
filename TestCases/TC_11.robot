*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tabbed_Windows
    open browser    http://demo.automationtesting.in/Windows.html    chrome
    click element    xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
    select window   title=Selenium    #To switch to newly opened window
    click element    xpath://header/nav[1]/div[1]/ul[1]/li[2]/a[1]
    sleep    3
    close all browsers
