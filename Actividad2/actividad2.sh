#!/bin/sh

path="https://api.github.com/users/"
nowf="$(date)"
now="$(date +'%Y-%m-%d')"
fileName="/tmp/$now/saludos.log"



echo "Ingresa tu usuario de github"
read GITHUB_USER
if [ -z "$GITHUB_USER" ] 
then
    echo "No Ingresaron valor"
    
else 

    url=$path$GITHUB_USER
    id=$(wget $url -q -O - | jq -r  '.id') 
    user=$(wget $url -q -O - | jq -r  '.login') 
    createdAt=$(wget $url -q -O - | jq -r  '.created_at') 
    rsp="$nowf >> Hola $user . User ID:  $id , Cuenta fue creada el:  $createdAt "
        if [ -f "$fileName" ]; then 
            echo  $rsp>> $fileName
        else
            mkdir -p "$(dirname "${fileName}")" && touch "${fileName}"
            echo $rsp >$fileName
        fi
    echo "Saludo registrado"
    
fi