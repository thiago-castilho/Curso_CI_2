#Aqui definimos a imagem que vamos utilizar
FROM ubuntu:latest

#Aqui é onde definimos qual porta da máquina Docker se comunicará com a internet
EXPOSE 8000

#Aqui é a pasta que guardaremos tudo 
WORKDIR /app

#Variáveis passadas no arquivo Dockerfile
ENV HOST=localhost PORT=5432

ENV USER=root PASSWORD=root DBNAME=root

# Pode ser ./main.exe main ou pode ser ./main.exe . 
# Aqui estamos copiando a versão compilada de nossa aplicação para o container docker
COPY ./main.exe main

#CMD ou ENTRYPOINT [ "executable" ] fazem a mesma função, que é executar a versão compilada de nossa aplicação
CMD [ "./main.exe" ]