*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL} =   http://www.amazon.com
${BROWSER} =  chrome

#robot -d Results -v BROWSER:chrome  -v URL:"http://www.flipkart.com"  Tests/passing.robot

*** Test Cases ***
User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    Begin Web Test  ${URL}  ${BROWSER}

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Close Browser
