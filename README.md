#Ruby 1

localhost:/3000/articles/1
-mostrar -actualizar -eliminar

REST
Get - Leer elementos - Mostrar el articulo
Post - Crear elementos - Creamos un nuevo articulo
Delete - Eliminar elementos - Eliminar el articulo
Put - Modificar elementos - Modificar un archivo


REST
Crear
Editar
Nuevo
Eliminar
Actualizar

HTTP
GET - POST

Una tienda en linea
Subir un nuevo producto - POST
Hacer una nueva venta - POST
Actualizar el inventario - PUT
Eliminar un producto - DELETE
Mostrar mi inventario - GET
_____________________________________________
Base de datos relacional : 9gag

User
id_user

Imagenes => post
id_images
id_user

Un usuario puede tener multiples post

Gema para la autenticacion

tags

post

1 tag puede tener multiples posts
1 post puede tener multiples tags

Tabla intermedia => tagging
tagging
id_post =>id del articulo
id_tag


Abrimos un post, vamos a sacar de la tabla tagging todos los post que tengan el mismo id