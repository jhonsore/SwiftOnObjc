//
//  ViewController.m
//  Teste
//
//  Created by Jhonnatan Soares Rebuli on 16/11/18.
//  Copyright © 2018 Webview. All rights reserved.
//

#import "ViewController.h"
#import <Teste-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

/*
 1 - Create your xcode project
 
 2 - Create a new .swift file
 
 3 - A dialogue box will appear, make sure to select “Create Bridging Header” when prompted.
 
 4 - On Target -> build settings, search for "Packaging" and turn on "Defines Module"
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //-------------
    IAP *obj = [[IAP alloc] init];
    NSString *string = [obj test];
    NSLog(@"%@",string);
    
    Second *secondClass = [[Second alloc] init];
    NSString *string2 = [secondClass test];
    NSLog(@"%@",string2);
}


@end
