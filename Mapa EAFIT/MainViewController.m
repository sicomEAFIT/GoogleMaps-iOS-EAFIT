//
//  MainViewController.m
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/10/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize mapView, camera = _camera;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:6.2012
															longitude:-75.5784
																 zoom:18];
	
	mapView = [GMSMapView mapWithFrame:[self view].bounds
								camera:camera];
	
	[mapView setBuildingsEnabled:YES];
	[mapView setMyLocationEnabled:YES];
	[mapView setMapType:kGMSTypeHybrid];

	[[self view] addSubview:mapView];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
