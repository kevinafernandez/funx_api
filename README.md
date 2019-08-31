# Funx API 

API basada en Ruby on Rails 5.2.3

## Tabla de contenidos
* [Información general](#información-general)
* [Tecnologías](#tecnologías)
* [Instalación](#instalación) 
* [Carpetas](#carpetas)
* [Ejemplos](#ejemplos)

## Información general
Simple API basada en un CRUD para Artistas y Albúmes, donde dichos datos se muestran de forma gráfica en una aplicación: `https://github.com/kevinafernandez/funx.git`
	
## Tecnologías
Para este proyecto debes considerar o instalar las siguientes versiones:
  * Ruby: `2.5.3`
  * Rails: `5.2.3`
  * PostgreSQL: `>= 9.5`

## Instalación
* Clona este repositorio vía HTTPS: `git clone https://github.com/kevinafernandez/funx_api.git`

* Instala todas las gemas y dependencias: `bundle install`

* Crea la base de datos: `rails db:create`

* Ejecuta todas las migraciones: `rails db:migrate`

* En caso de ejecutar la API y la aplicación al mismo tiempo, inicia el servidor de la API en otro puerto, ejemplo: `rails server -p3001` , de lo contrario, ejecutalo de forma tradicional: `rails server`


## Carpetas

* `app/models` - Contiene dos modelos (Artist, Album), en él se definen métodos, validaciones, consultas SQL y relaciones.

* `app/controllers` - Contiene dos controladores (Artists, Albums), en él se definen las acciones CRUD para cada uno, adicional a esto, un método play en albums_controller para simular la reproducción de un albúm.

* `serializers` - Contiene la estructura para la serialización de objetos.

* `db` - Contiene las migraciones para crear nuestro schema en la base de datos.

## Ejemplos

Utiliza algún software o librería de tu preferencia para los servicios web (POSTMAN, Curl, entre otros). NOTA: se debe crear un artista para luego asignarle uno o muchos album(es).

###### Artists
```
* Obtener todos los artistas:
    GET /api/v1/artists/

* Crear un artista:
    POST /api/v1/artists/
    {
      "name": "Artist name (required)"
    }

* Obtener un artista:    
    GET /api/v1/artists/1

* Actualizar un artista:
    PUT/PATCH /api/v1/artists/1
    {
      "name": "Artist name updated"
    }

 * Eliminar un artista:
    DELETE /api/v1/artists/1
```

###### Albums
```
* Obtener todos los albumes:
    GET /api/v1/albums/

* Crear un albúm:
    POST /api/v1/albums/
    {
      "name": "Album name (required)",
      "description": "optional",
      "release_date": "optional",
      "artist_id": 1 (required)
    }

* Obtener un albúm:    
    GET /api/v1/albums/1

* Actualizar un albúm:
    PUT/PATCH /api/v1/albums/1
    {
      "campo1": "dato1",
      "campo2": "dato2",
      "campo_n": "dato_n"
    }

 * Reproducir un albúm:
    GET /api/v1/albums/1/play

 * Eliminar un albúm:
    DELETE /api/v1/albums/1
```