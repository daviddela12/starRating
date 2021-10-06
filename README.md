# README



* **Ruby version**
  2.6.5
* **Arquitectura:** Tras visualizar y dibujar el modelo de dominio que haría falta, desarrollé inicialmente el modelo, junto con sus test unitarios.
Tras esto, desarrollé el CRUD para productos (back-end). Al necesitar también en el front-end el modelo hice un cambio de diseño e incluí la administración dentro de un module Admin.

Después realicé un module Javascript que implementa la lógica del Rating. Este inicialmente lo cargaba con un import de javascript de Rails.
Con el paso a Ajax con Turbo, esta manera de cargar el módulo de Rating no me servía. Entonces opté por utilizar Stimulus. Este me permitía ejecutar javascript en cada cambio en el stream de Reviews.

En cada iteración en la aplicación, he creado una feature en git y tras terminarla he vuelto a lanzar los tests para comprobar que sigue pasándolos tras el cambio.

Para poder realizar pruebas y luego volver al estado inicial de base de datos, se ha creado unos seed desde los que se cargan los productos y unas reviews random sobre ellas.
Decisión tomada tras intentar utilizar algún evento javascript de turbo como "turbo:load", sin embargo no funcionaba como esperaba.
Por último se realizaron los test de sistema de productos y reviews.


* **Dificultades encontradas:** 
  * Problema con cargar el javascript. Mientras no hacía reload no me cargaba el javascript. Con turbo y la recarga ajax también se multiplicó el problema. Al final recurrí a Stimulus para poder añadir ese Javascript necesario y que de otro modo no podía.
  * También encontré problemas al cargar el scss. Porque quería mantener las variables en un scss aparte pero el orden en que cargaba ese scss hacía que a veces me fallara. Intenté varias modificaciones pero al final decidí colocarlo en el mismo fichero donde se usan dichas variables.
  * Otra duda, ¿cómo se hace un truncate y un sanitize sobre el mismo string?
  * No he encontrado la manera en un ```.each do |variable| end``` una variable de count de iteración para poder usar dentro y saber en qué iteración estoy...¿es posible eso en rails? o hay que declarar una variable fuera e ir incrementándola?

* **Base de datos:** SQlite3. Lanzar ```bin/rails db:seed``` para tener una batería de datos disponible.

* **Tests:** Se han creado test unitarios para los modelos y controladores, test de sistema para productos y reviews.

* **Instrucciones para ejecutar el proyecto:** Hay que lanzar el ````docker-compose.yml```` para tener disponible Redis. Necesario para el Action Cable y Turbo.

