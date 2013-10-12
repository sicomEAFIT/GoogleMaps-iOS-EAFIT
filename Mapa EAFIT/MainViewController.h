//
//  MainViewController.h
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/10/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import "CVCore.h"

@interface MainViewController : UIViewController <GMSMapViewDelegate>

//Instancia principal de GoogleMaps
@property (nonatomic, strong) GMSMapView * mapView;
//Instancia para definir la ubicacion de la pantalla en GoogleMaps
@property (nonatomic, strong) GMSCameraPosition * camera;

@end
