----------
| Readme |
----------

1. Prerequisitos:
	- Maquina local con el sistema operativo Windows 10
	- IDE IntelliJ version 2023.1
	- Maven version 3.8.6 (debe estar en la variable de entorno)
	- JDK versión 19 (debe estar en la variable de entorno)

2. Librerias de instalación
	- Gradle (Instalar Plugin en IDE IntelliJ)
	- Cucumber + (Instalar Plugin en IDE IntelliJ)
	- Cucumber for java (Instalar Plugin en IDE IntelliJ)
	
3. Instrucciones para ejecutar los test
	-Abrir proyecto tienda con el IDE IntelliJ
	-Abrir la ruta tienda/src/test/java/users (Existen 4 paquetes o carpetas delete, get, set y put)	
	-CREAR USUARIO
	-En la carpeta Set editar la linea request (se crea 3 usuarios de ejemplo)
		And request { "id": 0, "username": "user7", "firstName": "Pilar", "lastName": "Diaz", "email": "cpilar@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
		And request { "id": 0, "username": "user8", "firstName": "Jose", "lastName": "Diaz", "email": "jjose@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
		And request { "id": 0, "username": "user9", "firstName": "Juan", "lastName": "Diaz", "email": "jjuan@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
	-Run Scenario:Post a user (por cada usuario)
	-En la pantalla de Test dar clic en el link para visualizar el reporte de salida.
	--BUSCAR USUARIO CREADO
	-En la carpeta Get editar la linea Given (consultar 3 usuarios de ejemplo)
		Given  url "https://petstore.swagger.io/v2/user/user7"
		Given  url "https://petstore.swagger.io/v2/user/user8"
		Given  url "https://petstore.swagger.io/v2/user/user9"
	-Run Scenario:Get a user (por cada usuario)
	-En la pantalla de Test dar clic en el link para visualizar el reporte de salida.
	--ACTUALIZAR USUARIO
	-En la carpeta Put editar la linea Given y la línea request (actualizar 2 usuarios de ejemplo)
	-Al crear un usuario se genera automaticamente el campo id. el mismo que colocaremos en el campo id para actualizar
		Given  url "https://petstore.swagger.io/v2/user/user7"  | And request { "id": 9223372036854754000, "username": "user7", "firstName": "Carmen", "lastName": "Diaz", "email": "carmen@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
		Given  url "https://petstore.swagger.io/v2/user/user8"	| And request { "id": 9223372036854743000, "username": "user8", "firstName": "Ronaldinio", "lastName": "Diaz", "email": "rolindo@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
	-Run Scenario:Put a user (por cada usuario)
	-En la pantalla de Test dar clic en el link para visualizar el reporte de salida.
	--BUSCAR USUARIO ACTUALIZADO
	-En la carpeta Get editar la linea Given (consultar 2 usuarios de ejemplo)
		Given  url "https://petstore.swagger.io/v2/user/user7"
		Given  url "https://petstore.swagger.io/v2/user/user8"			
	-Run Scenario:Get a user (por cada usuario)
	-En la pantalla de Test dar clic en el link para visualizar el reporte de salida.
	--ELIMINAR USUARIO
	-En la carpeta Delete editar la linea Given (eliminar 1 usuarios de ejemplo)
		Given  url "https://petstore.swagger.io/v2/user/user7"
	-Run Scenario:Delete a user (por cada usuario)
	-En la pantalla de Test dar clic en el link para visualizar el reporte de salida.

4. Información adicional
	-En el repositorio se encuentra el archivo Pruebas_karate.docx con las pruebas exitosas de la ejecución.

Referencia: https://docs.github.com/es/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
Recordar que un readme correcto debe tener la extensión .md y debe estar dentro del proyecto.
