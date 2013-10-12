//
//  CVCore.h
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/11/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <GoogleMaps/GoogleMaps.h>

typedef enum {
	defaultMarker,
	userMarker,
	eventMarker
} CVMarkerType;

@interface CVMarker : NSObject
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * locationTitle;
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic) CVMarkerType type;

+ (CVMarker *)markerWithName:(NSString *)nameTitle locationTitle:(NSString *)loctitle coordinates:(CLLocationCoordinate2D)coord;
+ (CVMarker *)markerWithName:(NSString *)nameTitle coordinates:(CLLocationCoordinate2D)coord;

- (GMSMarker *)marker; // Retorna el marcador para ser usado en GMSMapView.

@end

//@class CVCore;
//@protocol CVCoreDelegate <NSObject>
//@end

@interface CVCore : NSObject
{
	NSMutableArray * markers;
}

- (void)update;
- (NSArray *)markers;

@end
