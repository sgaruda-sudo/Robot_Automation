*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser   https://www.google.com/  chrome
    ${loc} =    get location
    log to console    ${loc}
    sleep    2
    go to    https://www.bing.com/
    ${loc} =    get location
    log to console    ${loc}
    sleep    2
    go back
    sleep    2
    ${loc} =    get location
    log to console    ${loc}
    close all browsers