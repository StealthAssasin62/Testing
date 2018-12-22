*** Settings ***
Library  String
Library  Collections


*** Keywords ***
Is String Contains Duplicate Words
    [Documentation]  Key word to validate duplicate words in String
    [Arguments]  ${input_str}
    @{words} =  Split String  ${input_str}  ${SPACE}
    ${wordIndex} =  Set Variable  0
    :FOR  ${word}  IN  @{words}
    \  ${index} =  Get Index From List  ${words}  ${word}
    \  Return from keyword If  ${wordIndex}!=${index}  True
    \  ${wordIndex} =  Evaluate  ${wordIndex}+1