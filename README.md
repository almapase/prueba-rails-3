# Prueba Rails 3
## Mini Spotify

## [Link a Heroku](https://hidden-shore-44581.herokuapp.com)

Vamos a construir una aplicación que te permita tener un playlist online, para simplificar el modelo y la prueba será un único Playlist.

![MER](https://www.evernote.com/l/ACv6tAUbXG5KQ618GaS2m-228LGJxXgMdggB/image.png)

## Se pide:
  - Un usuario ingresa al sistema a través del formulario de ingreso o de registro de devise (deben incluirse ambas) y luego es redirigido a songs#index. [devise y redirección]
  - El usuario al registrarse debe ingresar su nombre [strong params]
  - El navbar del usuario debe indicar su nombre si se encuentra ingresado y el botón de salir, y si todavía no ha ingresado debe aparecer el link a registrarse o a ingresar. [current_user]
  - El usuario puede agregar canciones nuevas [formulario simple]
  - En el formulario para agregar canciones (songs#new) se debe poder seleccionar el género de la canción [uso de select o checkbox simple]
  - Dentro de songs#index el usuario ve una lista de canciones, selecciona las que quiere y las agrega a su lista a través de un link y luego es redirigido a la misma página (songs#index) [Formulario anidado]
  - El usuario puede filtrar por género las canciones, utilizar el mismo método del controller, revisar si el parámetro está presente y buscar por eso. [Búsqueda]
  - El usuario puede ordenar el listado alfabéticamente, hint: revisar si el parámetro de orden está presente y ordenar los resultados. [Orden]
   - El usuario puede ver un listado de usuarios y seleccionar un listado del usuario para luego ir a su lista de canciones agregadas. [index en rutas anidadas]
   - El usuario puede borrar de su user_songs aquellas en las que ya no esté interesado. [link a delete en ruta anidada]
   - Solo el dueño de un user_song debe poder borrarlo de su lista. [CanCanCan pertencia]
   - Limitar el acceso al sitio (excepto a los formularios de ingreso) a usuarios ingresados [CanCanCan basado en roles]
   - Subir a github y a heroku, agregar seed con los datos.
