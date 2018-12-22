*** Settings ***
Resource  ../Resources/web.robot

Test Setup      Open My Preferred Browser
Test Teardown   Close my Preferred Browser

#robot -d Results Tests/AmazonApp.robot

*** Test Cases ***
Validate if Amazon Opened
    [Documentation]  To open a browser with Amazon URL
    Go To   https://www.amazon.in/
    Wait Until Page Contains   Your Amazon.in

Validate if flipKart isOpened
    [Documentation]  To open a browser with Flipkart URL
    Go To  https://www.flipkart.com/
    Wait Until Page Contains   More

