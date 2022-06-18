*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
SpeedTest
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    maximize browser window
    ${time}=    get selenium timeout
    set selenium timeout    10 seconds
    wait until page contains    LOGIN Panel
    input text    name:txtUsername    Admin
    input text    id:txtPassword    admin123
    ${time_after}=    get selenium timeout
    log to console    set selenium timeout,${time_after}
