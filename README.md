GoogleMaps-iOS-EAFIT
====================

Google Maps [iOS] EAFIT, es un proyecto desarrollado por el semillero de investigacion movil SICOM de la universidad EAFIT de Medellin, para crear un mapa interactivo de dicha universidad, para el uso de todos los estudiantes y visitantes, el cual muestre informacion relevante de los bloques y lugares de interes usando las tecnologias de mapeo de Google. 

El presente codigo es la version para dispositivos iOS codificada en Objective-C y C++.

Como trabajar en el proyecto iOS
================================

Para mantener un orden en el proyecto al momento de trabajar en este en el area de iOS, se debera llevar la siguientes convenciones, FAVOR NO CAMBIAR LA CONVENCION Y REVISAR BIEN ANTES DE HACER UN COMMIT.

 * Todo archivo .m y su correspondiente cabecera .h deberan anteponer en mayuscula las iniciales del proyecto Campus Movil __CM__ seguido del nombre de la clase que tiene asociada dicho archivo con la primera letra en mayuscula, de la siguiente manera, para la clase _core_ se debera crear los archivos como : __CMCore.m__ y __CMCore.h__.

 * Todo archivo credo debe tener en la cabecera el autor, fecha y breve descripcion del funcionamiento de la clase, de la siguiente manera:
 ```objective-c
//  CMCore.m
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/10/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//
//
// ACERCA DE:
// Esta clase se conecta con el servidor remoto y descarga los "Markers" que seran
// puestos en el mapa de la universidad, asi como otros recursos almacenados.
//
#import "CMCore.h"
@implementation CMCore
@end
 ```
Uso
===
Al momento de entrar por primera vez en la aplicacion se encontrara con el mapa satelital de la universidad EAFIT y unos "Markers" que representan los puntos de interes, lugares importantes o puntos definidos por el usuario, los cuales pueden tener una descripcion asociada o no.

###Vista de entrada
![ScreenShot](https://dl.dropboxusercontent.com/s/b8kbi3jzochwzng/46542056.png?token_hash=AAHL7hx8G8vv98JzF3ZSL85PF3W3jgrsD873rQUU1XIiEw&dl=1)

La descripción puede tener imágenes, listas de sub-puntos de interés, por ejemplo: salones, auditorios, oficiosas, etc. [Actualmente en construcción]. Si un Marker tiene asociado una descripción al presionar este, se hará una transición a una vista donde se mostrara la información referente al Marker, por otro lado, si no tiene una descripción asociada, como sucede con los bloques 33, 34 y 35, aparecerá una nube encima de el Marker con una descripción general de este sitio (sin hacer transiciones).

###Vista de marker sin detalles asociados
![ScreenShot](https://dl.dropboxusercontent.com/s/0juho4dap7l3yc9/45642614564.png?token_hash=AAFzKzdVv413x48GFgVQC_7D-o-QpfKDccsug8XHiTrtcQ&dl=1)

###Vista de detalles de marker (en construccion) 
![ScreenShot](https://dl.dropboxusercontent.com/s/gpjkllc1kn44wde/9879599.png?token_hash=AAEP_bEDkdAgXCNQHelS6VCUVgomJRzEx8ZPfWNvc44nIw&dl=1)

Agradecimientos
============

Se agradece a los integrantes del equipo iOS, los responsables del código desarrollado
  * Alejandro Carmona Ramirez
  * Mateo Olaya Bernal 
  * David Romero
  
  Licencia
  ======
  
  ** Por especificar 
  