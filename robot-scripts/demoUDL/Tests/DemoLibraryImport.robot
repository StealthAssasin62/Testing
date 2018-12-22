*** Settings ***
Resource  ../Resources/LibraryResource.robot

*** Variables ***
${CSV_FILENAME} =  Resources/DemoCSVFile.csv

#robot -d Results  -i currentRun Tests/DemoLibraryImport.robot

*** Test Cases ***
Validated Successful addition Of Numbers
    [Documentation]  Test case to validate user define library import
    [Tags]  lastRun
    ${param1} =  set variable  2
    ${param2} =  set variable  3

    ${value1} =  convert to number  ${param1}
    ${value2} =  convert to number  ${param2}

    ${result} =  Calculate Addition  ${value1}  ${value2}
    should be equal as numbers  5  ${result}

Read from CSV file
    [Documentation]  This is a test to read from CSV file
    [Tags]  currentRun
    ${fileObj} =  Open CSV File   ${CSV_FILENAME}
    should not be equal  ${None}  ${fileObj}

    ${line} =  Read First Line from File   ${fileObj}
    should not be empty  ${line}
    Close CSV File  ${fileObj}
