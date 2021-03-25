````
запуск сервера статики
````
- docker build -t server -f server.Dockerfile .
- docker run -p 8082:8082 --name server -t server

````
запуск сервера nginx
````
- docker build -t nginx -f nginx.Dockerfile .
- docker run -p 8082:8082 --name nginx -t nginx
