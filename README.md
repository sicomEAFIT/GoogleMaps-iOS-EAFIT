GoogleMaps-iOS-EAFIT
====================

Google Maps [iOS] EAFIT, es un proyecto desarrollado por el semillero de investigación móvil SICOM de la universidad EAFIT de Medellin, para crear un mapa interactivo de dicha universidad, para el uso de todos los estudiantes y visitantes, el cual muestre información relevante de los bloques y lugares de interés usando las tecnologías de mapeo de Google. 

El presente código es la version para dispositivos iOS codificada en Objective-C y C++, desarrollada por Mateo Olaya y Google Inc.

Como trabajar en el proyecto iOS
================================

Para mantener un orden en el proyecto al momento de trabajar en este en el área de iOS, se deberá llevar la siguientes convenciones, FAVOR NO CAMBIAR LA CONVENCION Y REVISAR BIEN ANTES DE HACER UN COMMIT.

 * Todo archivo .m y su correspondiente cabecera .h deberán anteponer en mayúscula las iniciales (primer nombre Y primer apellido) del usuario que lo creo seguido del nombre de la clase que tiene asociada dicho archivo con la primera letra en mayúscula, de la siguiente manera, para el usuario Mateo Olaya Bernal y la clase _services_ se deberá crear los archivos como : __MOServices.m__ y __MOServices.h__.

 * Todo archivo credo debe tener en la cabecera el autor, fecha y breve descripción del funcionamiento de la clase, de la siguiente manera:
 ```objective-c
//  MOServices.m
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/10/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//
//
// ACERCA DE:
// Esta clase se conecta con el servidor remoto y descarga los "Markers" que serán
// puestos en el mapa de la universidad, así como otros recursos almacenados.
//

#import "MOServices.h"

@implementation MOServices

@end
 ```