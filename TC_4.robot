*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123
    capture element screenshot    xpath://body/div[@id='wrapper']/div[@id='content']/div[@id='divLogin']/div[@id='divLogo']/img[1]   logo.png
    maximize browser window
    capture page screenshot   login.png    #Default stored in the project directory

