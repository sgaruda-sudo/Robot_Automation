*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Testinginputbox
    open browser    ${url}  ${browser}
    title should be    nopCommerce demo store
    click link    //a[contains(text(),'Log in')]
    sleep   2
    ${"email_txt"}    set variable    id:Email
    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}
    input text   ${"email_txt"}    sampath.garuda95@gmail.com
    sleep   3
    clear element text    ${"email_txt"}
    sleep   5
    close browser
