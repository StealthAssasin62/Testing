*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    open browser  about:blank   ${BROWSER}
    go to   ${URL}

End Web Test
    close all browsers