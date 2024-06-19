up:: [[Сетевые протоколы]]
tags:: #безопасность #шифрование

# SSH

Secure Shell - это безопасный способ общения между клиентом и сервером через алгоритм шифрования. Он поддерживает авторизацию и проверяет передаваемые файлы на целостность.

```
sudo apt update
sudo apt install openssh-server
sudo systemctl status ssh
sudo systemctl enable --now ssh
```

Проверка работы ssh

```
ssh [username]@[ip-address]
```