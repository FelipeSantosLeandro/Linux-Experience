#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd gabriel -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM
useradd laura -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM
useradd odair -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_ADM

useradd marina -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_VEN
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_VEN
useradd marcelo -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_VEN

useradd jessica -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC
useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC
useradd bruna -m -s /bin/bash -p $(openssl passwd -crypt Senha000) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
