*** Settings ***
Documentation  Test suite for validating duplicate words in given string
Resource  ../Resources/Helper.robot

*** Variables ***
${INPUT_STR} =  This is a duplicate duplicate string

#robot -d Results  -v INPUT_STR:"This is a duplicate duplicate string" Tests/DuplicateIdentifcation.robot

*** Test Cases ***
Validate String Contains Duplicate Words
    Should Not Be Empty  ${INPUT_STR}
    ${ret} =  Is String Contains Duplicate Words    ${INPUT_STR}
    should not be true  ${ret}

