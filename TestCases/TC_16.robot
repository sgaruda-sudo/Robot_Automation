# Get all Links in a given link
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetalllinksText
    open browser    https://demo.guru99.com/test/newtours/    chrome
    maximize browser window
    ${links_count}=    get element count   xpath://a         # get links count
    log to console    ${links_count}

    @{Linkitems}    create list
    FOR    ${i}    IN RANGE    1    ${links_count}+1
    ${linkTest}=    get text    xpath:(//a)[${i}]    #pass the index value
    log to console   ${linkTest}
    END