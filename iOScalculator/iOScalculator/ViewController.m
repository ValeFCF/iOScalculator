//
//  ViewController.m
//  iOScalculator
//
//  Created by Emmanuel Valentín Granados López on 16/07/14.
//  Copyright (c) 2014 Emmanuel Valentin Granados Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    int webos = [calcular:1 a:1 conOp:0];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(int)calcular:(int)val1 a:(int)val2 conOp:(int)operacion{
    
    int resultado;
    
    if (operacion == 0) {
        resultado = val1 + val2;
    } else if (operacion == 1){
        resultado = val1 - val2;
    } else if (operacion == 2){
        resultado = val1 * val2;
    } else if (operacion == 3){
        resultado = val1 / val2;
    }
    
    return resultado;
}



@end
