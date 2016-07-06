//
//  ViewController.m
//  GoogleMapsTest
//
//  Created by Luis Diaz on 7/5/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import "Start.h"
@import GoogleMaps;


@interface Start ()

@end

@implementation Start{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMap];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)createMap {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.6947103
                                                            longitude:-103.4203145
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.6947103, -103.4203145);
    marker.title = @"UAG";
    marker.snippet = @"Clase de Maestría";
    marker.map = mapView_;
}
@end
