#Demonstrating For Loop in robot
*** Test Cases ***
#Using for loop in manycases
Forloop1
     FOR    ${i}    IN RANGE    1    10     #for i in range 1 10 10 not included
     LOG TO CONSOLE    ${i}
     END

Forloop2
    FOR    ${i}    IN   1 2 3 4 5 6 7 8     #all values will print in 1 single line
    LOG TO CONSOLE    ${i}
    END

Forloop3
    FOR    ${i}    IN   1    2    3    4    5    6    7    8     #all values will print in different lines but not 1
    LOG TO CONSOLE    ${i}
    END

Forloop4
    @{items}    create list    1    2    3    4    5        #@{items} creates a list
    FOR     ${i}    IN    @{items}
    log to console    ${i}
    END

Forloop5
    log to console    ${space}
    @{names_items}    create list    john    david   smith   sampi                           #for loop for numbers
    FOR     ${i}    IN   @{names_items}
    log to console    ${i}
    END

ForLoop6                        #To exit the loop
    @{items}    create list    1    2    3     4    5    6
    FOR    ${i}    IN    @{items}
    log to console    ${i}
    exit for loop if    ${i} ==4
    END