# Funx API 

API basada en Ruby on Rails 5.2.3

## Tabla de contenidos
* [Información general](#información-general)
* [Tecnologías](#tecnologías)
* [Instalación](#instalación) 
* [Carpetas](#carpetas)

## Información general
Simple API basada en un CRUD para Artistas y Albúmes, donde dichos datos se muestran de forma gráfica en una aplicación: `https://github.com/kevinafernandez/funx.git`
	
## Tecnologías
Para este proyecto debes considerar o instalar las siguientes versiones:
  * Ruby: 2.5.3
  * Rails: 5.2.3
  * Base de dato relacional: PostgreSQL 9.5

## Instalación
* Clona este repositorio vía HTTPS: `git clone https://github.com/kevinafernandez/funx_api.git`

* Instala todas las gemas y dependencias: `bundle install`

* Crea la base de datos: `rails db:create`

* Ejecuta todas las migraciones: `rails db:migrate`

* En caso de ejecutar la API y la aplicación al mismo tiempo, inicia el servidor de la API en otro puerto, ejemplo: `rails server -p3001` ,de lo contrario, ejecutalo de forma tradicional: `rails server`


## Carpetas

* `app/models` - Contiene dos modelos (Artist, Album), en él se definen métodos, validaciones, consultas SQL y relaciones.

* `app/controllers` - Contiene dos controladores (Artists, Albums), en él se definen las acciones CRUD para cada uno, adicional a esto, un método play en albums_controller para simular la reproducción de un albúm.

* `serializers` - Contiene la estructura para la serialización de objetos.

* `db` - Contiene las migraciones para crear nuestro schema en la base de datos.