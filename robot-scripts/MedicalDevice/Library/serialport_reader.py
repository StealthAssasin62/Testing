import serial

def create_new_device_serialport():
    return serial.Serial(timeout=1)

def configure_device_serialport(serialport,port,baudrate):
    serialport.port = port
    serialport.baudrate = baudrate
    serialport.bytesize = serial.SEVENBITS
    serialport.parity = serial.PARITY_ODD

def open_device_serialport(serialport):
    serialport.open()

def read_from_device_serialport(serialport):
    return serialport.readline()

def is_device_serialport_open(serialport):
    return serialport.isOpen()

def close_device_serialport(serialport):
    serialport.close()