//
//  ViewController.m
//  iOScalculator
//
//  Created by Emmanuel Valentín Granados López on 16/07/14.
//  Copyright (c) 2014 Emmanuel Valentin Granados Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)NSInteger valor1;
@property (nonatomic)NSInteger valor2;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSInteger webos = [self calcular:1 a:1 conOp:0];
    
   NSLog(@"String with one int %d",webos);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bDivision:(id)sender {
    self.tResultado.text=@"/";
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

- (IBAction)bMultiplicacion:(id)sender {
    self.tResultado.text=@"*";
}

- (IBAction)bIgual:(id)sender {
    self.tResultado.text=@"=";
}


- (IBAction)bSuma:(id)sender {
    self.tResultado.text=@"+";
}

- (IBAction)bResta:(id)sender {
    self.tResultado.text=@"-";
}

- (IBAction)bCero:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"0" ];
}

- (IBAction)bNueve:(id)sender {
   self.tResultado.text=[self.tResultado.text stringByAppendingString:@"9" ];
}

- (IBAction)bOcho:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"8" ];
}

- (IBAction)bSiete:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"7" ];
}

- (IBAction)bSeis:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"6" ];
}

- (IBAction)bCinco:(id)sender {
   self.tResultado.text=[self.tResultado.text stringByAppendingString:@"5" ];
}

- (IBAction)bCuatro:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"4" ];
}

- (IBAction)bTres:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"3" ];
}

- (IBAction)bDos:(id)sender {
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"2" ];
}

- (IBAction)bUno:(id)sender {
    //Concatenacion.- string1 stringByAppendingString: string 2
    self.tResultado.text=[self.tResultado.text stringByAppendingString:@"1" ];
  //  self.tHistorial.text = @"Uno";
}
- (IBAction)bBorrar:(id)sender {
    self.tResultado.text = @"";
    //self.tHistorial.text = @"";
}
@end
