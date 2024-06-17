up:: [[RockPI]]
tags:: 

# Подключение RockPI к Windows

#### По [[SSH]]:
``` shell
ssh username@ip_address
```

**username** - имя пользователя на RockPI
**ip_address** - адрес устройства в сети

Также при подключении понадобится пароль пользователя, ключ безопасности устройства.

#### По [[VNC]]

1. Установить TightVNC на RockPI
```
sudo apt-get install tightvncserver
```
2. Установить VNC клиент на Windows, например TightVNC Viewer
3. Подключиться по IP адресу и порту сервера
4. Ввести пароль, установленный при настройке сервера

#### По USB-to-TTL

1. Подключить адаптер 
2. Настроить в PuTTY