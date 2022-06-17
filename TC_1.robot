*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    OPEN BROWSER    ${url}  ${browser}
    loginToApplication
    close browser



*** Keywords ***
loginToApplication
    click link    xpath://a[contains(text(),'Log in')]
    input text    id:Email  sampath.garuda95@gmail.id
    input text    id:Password   sampi123
    click element   xpath: //button[contains(text(),'Log in')]