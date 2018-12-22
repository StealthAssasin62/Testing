*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.in  chrome
    Wait Until Page Contains  Your Amazon.in
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  //*[@id="result_0"]/div/div[2]/div/div[2]/div[1]/div[1]/a
    @{handles} =  Get Window Handles
    Select Window  @{handles}[1]
    Wait Until Page Contains  Back to search results

    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue

    Close Browser
