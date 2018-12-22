*** Settings ***
Documentation  This is a  basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must signed in to checkout
    [Documentation]  This is a basic info about test cases
    [Tags]  Smoke
    open browser  https://www.amazon.in/  ff
    sleep  3s
    close browser

