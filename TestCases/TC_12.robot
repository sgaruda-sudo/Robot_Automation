*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#MouseActions 1:Right Click
MouseAction_Right_Click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    open context menu    xpath://span[contains(text(),'right click me')]
    sleep    2
#MouseActions 2:DoubleClick
MouseDouble_Click_action
    go to    https://testautomationpractice.blogspot.com/
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep    2

#PerformDrag and Drop action
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106
    sleep    3
    close browser


