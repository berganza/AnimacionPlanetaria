//
//  ViewController.m
//  AnimacionPlanetaria
//
//  Created by LLBER on 22/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize capa, subCapa1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    capa = [CALayer layer];
    capa.bounds = CGRectMake(0, 0, 200, 200);
    capa.position = self.view.center;
    capa.cornerRadius = 100;
    capa.borderColor = [UIColor whiteColor].CGColor;
    capa.borderWidth = 1.5;
    
    subCapa1 = [CALayer layer];
    subCapa1.bounds = CGRectMake(0, 0, 50, 50);
    subCapa1.position = CGPointMake(100, 0);
    subCapa1.cornerRadius = 25;
    subCapa1.backgroundColor = [UIColor blueColor].CGColor;
    subCapa1.borderColor = [UIColor blueColor].CGColor;
    subCapa1.borderWidth = 1.5;
    
    CALayer * subCapa2 = [CALayer layer];
    subCapa2.bounds = CGRectMake(0, 0, 10, 10);
    subCapa2.position = CGPointMake(5, -20);
    subCapa2.cornerRadius = 5;
    subCapa2.backgroundColor = [UIColor grayColor].CGColor;
    subCapa2.borderColor = [UIColor grayColor].CGColor;
    subCapa2.borderWidth = 1.5;
    
    [subCapa1 addSublayer: subCapa2];
    [capa addSublayer:subCapa1];
    [self.view.layer addSublayer:capa];
}


-(IBAction)animar:(id)sender {
    
    CABasicAnimation * rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    float angulo = 3*360*M_PI/180;
    rotationAnimation.toValue = [NSNumber numberWithFloat:angulo];
    rotationAnimation.duration = 10.0;
    [subCapa1 addAnimation:rotationAnimation forKey:@"animacion"];
    [capa addAnimation:rotationAnimation forKey:@"animacion"];
    
}


@end
