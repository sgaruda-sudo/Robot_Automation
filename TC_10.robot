*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
SpeedTest
    ${speed_selenium_default}=    get selenium speed
    log to console    ${speed_selenium_default}
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    set selenium speed    3 seconds    #Every statement continuing will execute with 3 seconds of delay
    maximize browser window
    input text    name:txtUsername    Admin
    input text    id:txtPassword    admin123
    ${speed} =    get selenium speed
    log to console  ${speed}