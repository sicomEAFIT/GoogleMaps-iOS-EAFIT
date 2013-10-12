//
//  CVCore.m
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/11/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import "CMCore.h"

@implementation CMMarker
@synthesize name, locationTitle, coordinate, type, details;

- (id)init
{
	self = [super init];
	if (self) {
		details = [NSArray new];
	}
	
	return self;
}

- (GMSMarker *)marker
{
	GMSMarker *marker = [[GMSMarker alloc] init];
	[marker setPosition:coordinate];
	[marker setTitle:name];
	[marker setSnippet:locationTitle];
	
	return marker;
}

+ (CMMarker *)markerWithName:(NSString *)nameTitle coordinates:(CLLocationCoordinate2D)coord details:(NSArray *)det
{
	CMMarker *marker = [[CMMarker alloc] init];
	[marker setName:nameTitle];
	[marker setCoordinate:coord];
	[marker setDetails:det];
	
	return marker;
}

+ (CMMarker *)markerWithName:(NSString *)nameTitle locationTitle:(NSString *)loctitle coordinates:(CLLocationCoordinate2D)coord details:(NSArray *)det
{
	CMMarker *marker = [[CMMarker alloc] init];
	[marker setName:nameTitle];
	[marker setCoordinate:coord];
	[marker setLocationTitle:loctitle];
	[marker setDetails:det];
	
	return marker;
}

@end

@implementation CMCore

- (void)update
{
	// Connectar a la base de datos y descargar (actualizar) los marcadores almacenados alli.
}

- (NSArray *)markers
{
	// MIENTRAS SE IMPLEMENTA LA CONEXION A LA BASE DE DATOS, SE CREARAN LOS MARKETS MANUALMENTE,
	// LUEGO SE HARA DINAMICAMENTE !!!
	return @[[CMMarker markerWithName:@"Biblioteca"
						locationTitle:@"Bl32, Biblioteca Luis Echavarría Villegas."
						  coordinates:CLLocationCoordinate2DMake(6.20113, -75.57843)
							  details:@[@""]],
			 [CMMarker markerWithName:@"Bloque 35"
						locationTitle:@"Bloque 35, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20131, -75.57900)
							  details:nil],
			 [CMMarker markerWithName:@"Bloque 34"
						locationTitle:@"Bloque 34, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20112, -75.57903)
							  details:nil],
			 [CMMarker markerWithName:@"Bloque 33"
						locationTitle:@"Bloque 33, Aulas de interes general."
						  coordinates:CLLocationCoordinate2DMake(6.20092, -75.57901)
							  details:nil],
			 [CMMarker markerWithName:@"Cafeteria"
						locationTitle:@"El Tejadito, , Santa Elena, Dunkin' Donuts"
						  coordinates:CLLocationCoordinate2DMake(6.20160, -75.57898)
							  details:@[@"", @""]],
			 [CMMarker markerWithName:@"Auditorio"
						locationTitle:@"Auditorio Fundadores"
						  coordinates:CLLocationCoordinate2DMake(6.20039, -75.57894)
							  details:@[@""]]
			 ];
}

@end
