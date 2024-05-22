# Project API PetStore
> Ejercicio de automatizacion de APIS.


## Table of Contents
* [Technologies Used](#Prerequisitos)
* [Implementation](#Implementacion)
* [Flow](#flujo)
* [Instructions to run the test](#Instructions)
* [Project Status](#project-status)

## Technologies Used
	- Maquina local con el sistema operativo Windows 11
	- IDE: IntelliJ IDEA
	- JDK versión 20 o superior


## Implementation
    - Descargar e Instalar JDK versión 20 o superior
	- Descargar e instalar de la pagina https://www.jetbrains.com/ la version Intellij IDEA 2023.1.4 (Community Edition)
	- Descargar el zip del proyecto C_testAPI_PetStore del repositorio de git.
	- Descomprimir el proyecto con el nombre C_testAPI_PetStore en el workspace.
	- En Intellij ir a File/new/project from existing sources y seleccionar el proyecto C_testAPI_PetStore.


## Flow
	La página https://petstore.swagger.io/ proporciona la documentación sobre apis de una “PetStore”.
    Realizar los siguientes casos:
      - Añadir una mascota a la tienda.
      - Consultar la mascota ingresada previamente (Búsqueda por ID).
      - Actualizar el nombre de la mascota y el estatus de la mascota a “sold”.
      - Consultar la mascota modificada por estatus (Búsqueda por estatus).


## Instructions to run the test
      - Op1. Seleccionar el proyecto C_testAPI_PetStore y dar click en el menu en la opción Run para seleccionar
        Run PetstoreUserRunner Shift+F10.
      - Op2. Dentro del proyecto C_testAPI_PetStore ir a src/test/java/usercases y seleccione el archivo 
        PetstoreUserRunner.java, dar click derecho para seleccionar Run PetstoreUserRunner y ejecutar.
	  - A continuación se visualizará la ejecución de los casos generados para los aiguientes Escenarios: 
        1. HappyPath (flujo solicitado).
        2. Negative cases (validación de mensajes de error en el flujo).

## Project Status
Project is:  _complete_
