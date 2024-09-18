import socket
import threading

def receive_messages(client):
    while True:
        try:
            message = client.recv(1024).decode('utf-8')
            print(message)
        except:
            print("Erro ao conectar ao servidor!")
            client.close()
            break

def send_messages(client):
    while True:
        message = input("")
        client.send(message.encode('utf-8'))

nickname = input("Escolha um nickname: ")

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('192.168.0.101', 5555))

receive_thread = threading.Thread(target=receive_messages, args=(client,))
receive_thread.start()

send_thread = threading.Thread(target=send_messages, args=(client,))
send_thread.start()
