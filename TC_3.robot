*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
Dropdowntestcase
    open browser    ${url}    ${browser}
    maximize browser window
    select from list by index    id:customerCurrency    1
