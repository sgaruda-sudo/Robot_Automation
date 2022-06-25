# Tagging groups examples/categories and run accordingly
*** Test Cases ***
TC_1 User Registration
    [Tags]    regression
    log to console    This is user registration test
    log to console    Registration Test is over

TC_2 Login Test
    [Tags]    sanity
    log to console    This is Login Test
    log to console    Login test complete

TC_3 Change User Settings
    [Tags]    regression
    log to console    Chaging user settings test
    log to console    Change user settings test over

TC_4 Logout test
    [Tags]    sanity
    log to console    This is Logout Test
    log to console    Logout Test is over

#To run any test with a particular [Tag/Tags]--> robot -i tag1 -i tag2 Testcase_name
#If we want to run all , excluding a particular tag use "-e"