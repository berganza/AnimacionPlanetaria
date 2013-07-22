//
//  ViewController.h
//  AnimacionPlanetaria
//
//  Created by LLBER on 22/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController 
    
@property(nonatomic, strong) CALayer * capa;
@property(nonatomic, strong) CALayer * subCapa1;


-(IBAction)animar:(id)sender;

@end
