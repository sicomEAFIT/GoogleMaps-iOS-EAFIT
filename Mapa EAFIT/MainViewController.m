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
	[mapView setMapType:kGMSTypeSatellite];
    
	[[self view] addSubview:mapView];
	
	localDatabase = [NSMutableArray new];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
	[mapView clear];
}

- (void)viewDidAppear:(BOOL)animated
{
	[self rebuildLocalDatabase];
}

- (void)rebuildLocalDatabase
{
	core = [[CMCore alloc] init];
	int i = 0;
	
	for (CMMarker * marker in [core markers]) {
		GMSMarker * mark = [marker marker];
		
		[localDatabase addObject:marker];
		[mark setUserData:[NSNumber numberWithInt:i]];
		[mark setAppearAnimation:kGMSMarkerAnimationPop];
		[mark setMap:mapView];
		
		++i;
	}
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

- (BOOL)mapView:(GMSMapView *)mapView didTapMarker:(GMSMarker *)marker
{
	const int details = [[[localDatabase objectAtIndex:[[marker userData] integerValue]] details] count];
	
	if (details > 0) {
		[self performSegueWithIdentifier:@"block_details_segue" sender:marker];
		return YES;
	}
	
	return NO;
}

#pragma mark - Segue Controller

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"block_details_segue"]) {
		DetailsViewController *controller = (DetailsViewController *)[segue destinationViewController];
		[controller setMarker:(GMSMarker *)sender];
	}
}

@end
