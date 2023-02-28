# Actividad 3

## paso 1
>Se crea carpeta llamada conf y se crear archivo nginx.conf dentro  esto sobre la misma ruta donde tenemos nuestro archivo docker-compose.yaml

```
   server {
        listen       80;
        server_name  localhost.com;
        root         /usr/share/nginx/html;



        location / {
			alias /usr/share/nginx/html/;
            index index.html index.htm;
            try_files $uri /index.html;

        }

        

   

# SOCKETS
		

        error_page 404 /404.html;
            location = /40x.html {
        }

        error_page 500 502 503 504 /50x.html;
            location = /50x.html {

        }


    }
```

## paso 2

>Modificamos el docker-compose.yaml y agregamos volumenes al contenedor

```
volumes:      
      - ./conf/nginx.conf:/etc/nginx/conf.d/default.conf

```

## paso 3 

>levantamos el contenedor nuevamente

```
docker compose up -d 
```

