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
@synthesize mapView, camera;

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
    //Se define la ubicacion inicial y el zoom
	camera = [GMSCameraPosition cameraWithLatitude:6.2012 longitude:-75.5784 zoom:18];
	//Se define el mapa pasandole el rectangulo y la ubicacion
    mapView = [GMSMapView mapWithFrame:[self view].bounds camera:camera];
	//Se configura las opciones del mapa
	[mapView setDelegate:self];
	[mapView setBuildingsEnabled:YES];
	[mapView setMyLocationEnabled:YES];
	[mapView setMapType:kGMSTypeHybrid];

    
    //Crea un marker
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(6.2012, -75.5784);
    marker.title = @"Biblioteca";
    marker.snippet = @"Bl32, Biblioteca Luis Echavarría Villegas";
    marker.map = mapView;
    
	[[self view] addSubview:mapView];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - GoogleMaps View Delegate

- (void)mapView:(GMSMapView *)mapView willMove:(BOOL)gesture {
	NSLog(@"Moving...");
}

@end
