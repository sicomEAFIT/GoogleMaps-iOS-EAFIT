//
//  CVCore.h
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/11/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "AFNetworking.h"




typedef enum {
	defaultMarker,
	userMarker,
	eventMarker
} CVMarkerType;

@interface CMMarker : NSObject
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * locationTitle;
@property (nonatomic, strong) NSArray * details;
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic) CVMarkerType type;



+ (CMMarker *)markerWithName:(NSString *)nameTitle locationTitle:(NSString *)loctitle coordinates:(CLLocationCoordinate2D)coord details:(NSArray *)det;
+ (CMMarker *)markerWithName:(NSString *)nameTitle coordinates:(CLLocationCoordinate2D)coord details:(NSArray *)det;

- (GMSMarker *)marker; // Retorna el marcador para ser usado en GMSMapView.

@end

@class CMCore;

@protocol CMCoreDelegate <NSObject>

@optional

- (void)connection:(CMCore *)connect didReceiveData:(NSDictionary *)data withError:(BOOL)error;
- (void)connection:(CMCore *)connect didError:(NSError *)error;

@end

@interface CMCore : NSObject
{
	NSMutableArray * markers;
    AFHTTPRequestOperationManager *manager;
}
@property (nonatomic,copy) NSString*    userName;
@property (nonatomic,copy) NSString*    userPass;
@property (nonatomic,copy) NSString*    serviceName;
@property (nonatomic,copy) NSString*    userEmail;
@property (nonatomic,copy) NSString*    url;
@property (nonatomic,retain) id<CMCoreDelegate>delegate;



- (void)logInWhitUserName:(NSString *)userName
                 password:(NSString *)userPass
                serviceID:(NSString *)serviceName;

-(void)registerWithUserName:(NSString *)userName
                      email:(NSString *)userEmail
                   password:(NSString *)userPassword
                  serviceID:(NSString *)serviceName;
- (void)update;
- (NSArray *)markers;

@end
