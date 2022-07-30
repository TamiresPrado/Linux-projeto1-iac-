#!/bin/bash

echo "Criando os diretorios.."
mkdir publico
mkdir adm
mkdir ven
mkdir sec


echo "Criando os Grupos........"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios......"
useradd carlos -c "Carlos da Silva " -m -s /bin/bash -G GRP_ADM
passwd carlos -e

useradd maria  -c "Maria da Silva " -m -s /bin/bash -G GRP_ADM
passwd maria -e

useradd joao -c "Joao da Silva " -m -s /bin/bash -G GRP_ADM
passwd joao -e

useradd debora -c "Debora da Silva " -m -s /bin/bash -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana da Silva " -m -s /bin/bash -G GRP_VEN
passwd sebastiana -e

useradd roberto  -c "Roberto da Silva " -m -s /bin/bash -G GRP_VEN
passwd roberto -e


useradd josefina -c "Josefina da Silva " -m -s /bin/bash -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda da Silva " -m -s /bin/bash -G GRP_SEC
passwd amanda -e


useradd rogerio -c "Rogerio  da Silva " -m -s /bin/bash -G GRP_SEC
passwd rogerio -e

echo " Criando as permissoes dos diretorios....."

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 770 adm
chmod 770 ven
chmod 770 sec

chmod 777 publico

echo "  Finalizado!!!  "

