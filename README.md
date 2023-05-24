# README

##Tecnologias usadas
ruby 3.2.2
rails 7.0.4.3
postgres 15

##Pasos

##Clonar repositorio
git clone https://github.com/Rias-Ro/Los_Pits.git

##navegar al directorio
cd "nombre_repositorio"

##Instalar las gemas y dependencias del proyecto utilizando el comando
bundle install

##Configurar la conexión a la base de datos PostgreSQL(o el de tu eleccion) en el archivo
config/database.yml

##Ejecutar los comandos para crear la base de datos y migrar las tablas utilizando 

rails db:create
rails db:migrate

##Ejecucion

rails server

##Actualmente es un crud con bases corelacionales entre clientes y auto, posteriormente agregar detalle servicio y empezar el prototipado de la pagina web en vez de ##un crud directo.
