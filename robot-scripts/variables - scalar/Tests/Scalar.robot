*** Settings ***

*** Variables ***
${MY_VARIABLE} =  Hello there

#robot -d Results -v MY_VARIABLE:"Hello from cmd line"  Tests/Scalar.robot

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_variable} =  Set Variable  5
    Log  ${my_new_variable}

Variable demonstration
    Log  ${MY_VARIABLE}

Variable demonstration 2
    Log  ${MY_VARIABLE}


*** Keywords ***
