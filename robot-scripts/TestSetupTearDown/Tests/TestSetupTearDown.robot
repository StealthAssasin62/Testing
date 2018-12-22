*** Settings ***
Test Setup  Keyword1
Test Teardown  Keyword2

*** Test Cases ***
Test Case 1
    [Documentation]  test case 1
    keyword1

Test Case 2
    [Documentation]  Test case 2
    keyword2


*** Keywords ***
Keyword1
    Log  In Keyword 1

Keyword2
    Log  In Keyword 2