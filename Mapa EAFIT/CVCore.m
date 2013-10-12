//
//  CVCore.m
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/11/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import "CVCore.h"

@implementation CVMarker
@synthesize name, locationTitle, coordinate, type;

- (GMSMarker *)marker
{
	GMSMarker *marker = [[GMSMarker alloc] init];
	[marker setPosition:coordinate];
	[marker setTitle:name];
	[marker setSnippet:locationTitle];
	
	return marker;
}

+ (CVMarker *)markerWithName:(NSString *)nameTitle coordinates:(CLLocationCoordinate2D)coord
{
	CVMarker *marker = [[CVMarker alloc] init];
	[marker setName:nameTitle];
	[marker setCoordinate:coord];
	
	return marker;
}

+ (CVMarker *)markerWithName:(NSString *)nameTitle locationTitle:(NSString *)loctitle coordinates:(CLLocationCoordinate2D)coord
{
	CVMarker *marker = [[CVMarker alloc] init];
	[marker setName:nameTitle];
	[marker setCoordinate:coord];
	[marker setLocationTitle:loctitle];
	
	return marker;
}

@end

@implementation CVCore

- (void)update
{
	// Connectar a la base de datos y descargar (actualizar) los marcadores almacenados alli.
}

- (NSArray *)markers
{
	// MIENTRAS SE IMPLEMENTA LA CONEXION A LA BASE DE DATOS, SE CREARAN LOS MARKETS MANUALMENTE,
	// LUEGO SE HARA DINAMICAMENTE !!!
	return @[[CVMarker markerWithName:@"Biblioteca"
						locationTitle:@"Bl32, Biblioteca Luis Echavarría Villegas."
						  coordinates:CLLocationCoordinate2DMake(6.2012, -75.5784)],
			 [CVMarker markerWithName:@"B35"
						locationTitle:@"Bloque 35, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20131, -75.57900)],
			 [CVMarker markerWithName:@"B34"
						locationTitle:@"Bloque 34, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20112, -75.57903)],
			 [CVMarker markerWithName:@"B33"
						locationTitle:@"Bloque 33, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20092, -75.57901)],
			 [CVMarker markerWithName:@"Cafeteria"
						locationTitle:@"El Tejadito, , Santa Elena, Dunkin' Donuts"
						  coordinates:CLLocationCoordinate2DMake(6.20160, -75.57898)],
			 [CVMarker markerWithName:@"Auditorio"
						locationTitle:@"Auditorio Fundadores"
						  coordinates:CLLocationCoordinate2DMake(6.20039, -75.57894)]
			 ];
}

@end
