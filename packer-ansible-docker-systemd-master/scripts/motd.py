import datetime
import socket
import time

filepath = "/etc/motd"
current_datetime = str(datetime.datetime.now())
unix_timestamp = str(time.time())
hostname = socket.gethostname()    
ip_addr = socket.gethostbyname(hostname) 

try:
    with open(filepath, "w+") as outfile:
        outfile.write("current_datetime:" + current_datetime + "\n")
        outfile.write("unix_timestamp:" + unix_timestamp + "\n")
        outfile.write("hostname:" + hostname + "\n")
        outfile.write("ip_address:" + ip_addr + "\n")
except IOError:
    print("Couldn't open/create/write to file:" + filepath)
