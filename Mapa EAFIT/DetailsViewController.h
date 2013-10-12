//
//  DetailsViewController.h
//  Mapa EAFIT
//
//  Created by Mateo Olaya Bernal on 10/11/13.
//  Copyright (c) 2013 Mateo Olaya Bernal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMCore.h"

@interface DetailsViewController : UITableViewController
@property (nonatomic, strong) GMSMarker * marker;

@end
