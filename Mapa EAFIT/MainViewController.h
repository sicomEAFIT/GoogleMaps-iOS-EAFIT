//
//  MainViewController.h
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/10/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface MainViewController : UIViewController <GMSMapViewDelegate>

@property (nonatomic, strong) GMSMapView * mapView;
@property (nonatomic, strong) GMSCameraPosition * camera;

@end
