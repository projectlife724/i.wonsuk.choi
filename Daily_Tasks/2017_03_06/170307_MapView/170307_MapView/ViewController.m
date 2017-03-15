//
//  ViewController.m
//  170307_MapView
//
//  Created by Won Suk Choi on 2017. 3. 7..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/Mapkit.h>
#import <CoreLocation/CoreLocation.h>
#import "NewAnnotation.h"

//static const CGFloat BASE_LATITUDE = 37.539299;
//static const CGFloat BASE_LONGITUDE = 126.997130;

static const CGFloat ShillaLati = 37.555789;
static const CGFloat ShillaLongi = 127.005060;

@interface ViewController ()
<CLLocationManagerDelegate, MKAnnotation>

@property (weak, nonatomic) IBOutlet MKMapView *mapVIew;
@property (nonatomic) CLLocationManager* tempLocation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 신라 호텔 위치
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(ShillaLati, ShillaLongi);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.007, 0.007);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapVIew setRegion:region];
    
    
    self.tempLocation = [[CLLocationManager alloc] init];
    self.tempLocation.delegate = self;
    self.tempLocation.desiredAccuracy = kCLLocationAccuracyBest;
    [self.tempLocation requestWhenInUseAuthorization];
    [self.tempLocation startUpdatingLocation];

    
    // 그랜드 하얏트 호텔 위치
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.007, 0.007);
//    
//    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
//    [self.mapVIew setRegion:region];
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    [manager stopUpdatingLocation];
    
    
    CLLocationCoordinate2D coordinate = ((CLLocation *)locations.lastObject).coordinate;
    MKCoordinateSpan span = MKCoordinateSpanMake(0.003, 0.003);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapVIew setRegion:region];
    
    
    NewAnnotation *annotation = [[NewAnnotation alloc] init];
    annotation.coordinate = coordinate;
    [self.view addSubview:self.mapVIew];
    
    [self.mapVIew setShowsUserLocation:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
