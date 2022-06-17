*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MultiplebrowserTest
    open browser    https://www.google.com/    chrome
    sleep    2
    open browser    https://www.bing.com/    chrome
    sleep    2
    switch browser    1
    ${title}=    get title
    log to console    ${title}
    switch browser    2
    ${title}=    get title
    log to console  ${title}
    close all browsers
