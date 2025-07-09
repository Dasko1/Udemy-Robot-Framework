# scopeResource.robot: global variables (l.5) vs. local variables (l.9). Global variables do not need Set Variable Keyword!
# Takeaway: variables entered in command line take precedence over Test Suite variables (l.6) which take precedence
# over the variables defined in the Resource file!

*** Settings ***
Resource    ../Resources/scopeResource.robot

*** Variables ***

*** Test Cases ***
Create and log a variable
    # ${my_variable} =    Set Variable    Some information      This was for a local variable for that test case only!
    Log    ${MY_VARIABLE}

Access a variable
    Log    ${MY_VARIABLE}

*** Keywords ***