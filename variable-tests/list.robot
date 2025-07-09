*** Settings ***

*** Variables ***
@{MY_LIST_VARIABLE} =   Hello there!    This is value 2!    I am item 3!

*** Test Cases ***
Variable demonstratio
    Log    ${MY_LIST_VARIABLE}[0]
    Log    ${MY_LIST_VARIABLE}[1]
    Log    ${MY_LIST_VARIABLE}[2]

 Variable demonstration 2
    [Tags]  Current
    @{my_list_variable} =   Set Variable    Item 1  Item 2  Item 3
    Log    ${my_list_variable}[0]
    Log    ${my_list_variable}[1]
    Log    ${my_list_variable}[2]
