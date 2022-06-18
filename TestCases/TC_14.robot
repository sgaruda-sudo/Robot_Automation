*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#Scrolling Test
Scrolling_Test
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    maximize browser window
    #execute javascript  window.scrollTo(0,3000)    #0-horizontal scroll,1500 is vertical i.e upto 3000 pixel
    #scroll element into view  xpath://tbody/tr[113]/td[2]    # scroll till we find our requied element
    execute javascript    window.scrollTo(0,document.body.scrollHeight)    #document.body.scrollHeight -- scroll till the end
    sleep    2
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    # add minus is to scroll backup