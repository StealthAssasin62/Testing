*** Settings ***
Library  Collections

*** Variables ***
&{DICTVAR}  =  item1=value1   item2=value2  item3=value3

#robot -d Results  Tests/DictDemo.robot
*** Test Cases ***
Check Dict Demo
    [Documentation]  This is a demo of dict in robot framework
    Log  ${DictVar.item1}
    Log  ${DictVar.item2}
    Log  ${DictVar.item3}
    ${dict_keys} =  Get Dictionary Keys  ${DICTVAR}
    Log  ${dict_keys}
    ${dict_values} =  Get Dictionary Values  ${DICTVAR}
    Log  ${dict_values}
