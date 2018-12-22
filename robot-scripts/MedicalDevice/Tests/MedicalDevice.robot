*** Settings ***
Resource  ../Resources/SerialPortMgr.robot

*** Variables ***
${PORTNAME} =   /dev/ttyUSB0
${BAUDRATE} =   19200
${CSV_DATA_FILENAME} =  Data/CsvRecords.csv

#robot -d Results  -i deviceState  Tests/MedicalDevice.robot

*** Test Cases ***
Validate Medial Device is Connected
    [Documentation]  Test case to validte if Medical device is Connected
    [Tags]  deviceState
    ${serialport} =   Get New Serial Port
    Configure Serial Port   ${serialport}  ${PORTNAME}  ${BAUDRATE}
    Open Serial Port Connection  ${serialport}
    Validate Serial Port Connection  ${serialport}
    Close Serial Port Connection  ${serialport}

Validate Medial Device is PoweredOn
    [Documentation]  Test case to validte if Medical device is Powered on
    [Tags]  deviceState
    ${serialport} =   Get New Serial Port
    Configure Serial Port   ${serialport}  ${PORTNAME}  ${BAUDRATE}
    Open Serial Port Connection  ${serialport}
    Validate Serial Port Connection  ${serialport}
    ${line} =   Read Line from serial port connection  ${serialport}
    Should Not Be Empty  ${line}
    Close Serial Port Connection  ${serialport}

Read Medical Device Data for 5 minutes
    [Documentation]  Test case to read data from Medical device for 5 m
    [Tags]  DeviceReading
    ${serialport} =   Get New Serial Port
    Configure Serial Port   ${serialport}  ${PORTNAME}  ${BAUDRATE}
    Open Serial Port Connection  ${serialport}
    Validate Serial Port Connection  ${serialport}

    Read from serial port connection And Write to CSV File
    ...  ${serialport}  1 m  ${CSV_DATA_FILENAME}
    Close Serial Port Connection  ${serialport}
