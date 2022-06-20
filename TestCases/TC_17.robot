# Extracting Tables data using Table Tags
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableTC
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr
    ${columns}=    get element count    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr/th
    log to console    ${rows},${columns}

CaptureDataFromTable
    ${text_row_5}=    get text    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[5]
    log to console    ${text_row_5}

ValidateDataFromTable_Correctcolumnname
    table column should contain    //table[@name="BookTable"]    2    Author     # 2 is the second column
    table row should contain    //table[@name="BookTable"]    4    Learn JS      # 4 is the row
    table cell should contain    //table[@name="BookTable"]    5    2   Mukesh        # 5th row , 2nd column
    table header should contain    //table[@name="BookTable"]    BookName        # verify author