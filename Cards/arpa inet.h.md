up:: [[Работа с сетью в UNIX]]
tags:: #ip #строковый_формат

# <arpa/inet.h>

Содержит функциональность для работы с сетевыми адресами в UNIX, включает в себя следующие методы:

*inet_addr()* для перевода IPv4 адреса (к примеру, "192.168.0.1") в двоичную форму
*inet_ntoa()* для перевода числового адреса IPv4 в строковую форму
*inet_pton()* для перевода IPv4 и IPv6 адресов из текстовой формы в двоичную
*inet_ntop()* для перевода IPv4 и IPv6 адресов из двоичной формы в текстовую 