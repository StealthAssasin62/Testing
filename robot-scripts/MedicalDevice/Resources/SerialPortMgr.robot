*** Settings ***
Documentation  This is Serial Port Manager
Library  ../Library/serialport_reader.py
Library  ../Library/csv_reader_writer.py

*** Keywords ***
Get New Serial Port
    ${serialport} =   create new device serialport
    [Return]    ${serialport}

Configure Serial Port
    [Arguments]  ${serialport}  ${portname}  ${baudrate}
    configure device serialport  ${serialport}  ${portname}  ${baudrate}

Open Serial Port Connection
    [Arguments]  ${serialport}
    open device serialport  ${serialport}


Read Line From Serial Port Connection
    [Arguments]  ${serialport}
    ${line} =  read from device serialport    ${serialport}
    [Return]  ${line}

Validate Serial Port Connection
    [Arguments]  ${serialport}
    ${ret} =  is device serialport open  ${serialport}
    should be true  ${ret}
    [Return]  ${ret}

Close Serial Port Connection
    [Arguments]  ${serialport}
    close device serialport  ${serialport}

Read from serial port connection And Write to CSV File
    [Arguments]  ${serialport}  ${time}  ${csv_file}
    Repeat Keyword   ${time}
    ...  Read Line From Serial Port Connection And Write to CSV
    ...  ${serialport}  ${csv_file}

Read Line From Serial Port Connection And Write to CSV
    [Arguments]  ${serialport}  ${csvfilename}
    ${csvfileObj} =  open csv file  ${csvfilename}  a
    ${line} =  Read Line From Serial Port Connection  ${serialport}
    write csv line to file  ${csvfileObj}  ${line}
    close csv file  ${csvfileObj}