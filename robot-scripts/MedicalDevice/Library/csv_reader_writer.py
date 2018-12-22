import csv

def open_csv_file(filename,mode):
    file =  open(filename,mode=mode)
    return file

def read_first_line_from_device(fileObj):
    csv_reader = csv.reader(fileObj)
    for line in csv_reader:
        return line
    return None

def close_csv_file(fileObj):
    fileObj.close()

def write_csv_line_to_file(fileObj,line):
    csv_writer = csv.writer(fileObj)
    csv_writer.writerow(line)