GoogleMaps-iOS-EAFIT
====================

Google Maps [iOS] EAFIT, es un proyecto desarrollado por el semillero de investigacion movil SICOM de la universidad EAFIT de Medellin, para crear un mapa interactivo de dicha universidad, para el uso de todos los estudiantes y visitantes, el cual muestre informacion relevante de los bloques y lugares de interes usando las tecnologias de mapeo de Google. 

El presente codigo es la version para dispositivos iOS codificada en Objective-C y C++, desarrollada por Mateo Olaya y Google Inc.

Como trabajar en el proyecto iOS
================================

Para mantener un orden en el proyecto al momento de trabajar en este en el area de iOS, se debera llevar la siguientes convenciones, FAVOR NO CAMBIAR LA CONVENCION Y REVISAR BIEN ANTES DE HACER UN COMMIT.

 * Todo archivo .m y su correspondiente cabecera .h deberan anteponer en mayuscula las iniciales (primer nombre Y primer apellido) del usuario que lo creo seguido del nombre de la clase que tiene asociada dicho archivo con la primera letra en mayuscula, de la siguiente manera, para el usuario Mateo Olaya Bernal y la clase _services_ se debera crear los archivos como : __MOServices.m__ y __MOServices.h__.

 * Todo archivo credo debe tener en la cabecera el autor, fecha y breve descripcion del funcionamiento de la clase, de la siguiente manera:
 ```objective-c
//  MOServices.m
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

#import "MOServices.h"

@implementation MOServices

@end
 ```
