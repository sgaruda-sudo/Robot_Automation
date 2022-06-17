*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
SpeedTest
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    maximize browser window
    wait until page contains    LOGIN Panel
    set selenium implicit wait    10 seconds
    input text    name:txtUsername1    Admin
    input text    id:txtPassword    admin123

