//
//  ViewController.m
//  iOScalculator
//
//  Created by Emmanuel Valentín Granados López on 16/07/14.
//  Copyright (c) 2014 Emmanuel Valentin Granados Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)NSInteger resultado;
@property (nonatomic)NSInteger valor1;
@property (nonatomic)NSInteger valor2;
@property (nonatomic)NSInteger operacion;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bDivision:(id)sender {
    
   // if (self.valor1 == 0) {
        self.valor1 = [self.tResultado.text intValue];
        self.operacion = 3;
        NSLog(@"valor1 %d",self.valor1);
   // }
    
    self.tResultado.text=@"/";
    
}

- (IBAction)bMultiplicacion:(id)sender {
   // if (self.valor1 == 0) {
        self.valor1 = [self.tResultado.text intValue];
        self.operacion = 2;
        NSLog(@"valor1 %d",self.valor1);
  //  }
    
    self.tResultado.text=@"*";
}

- (IBAction)bSuma:(id)sender {
  //  if (self.valor1 == 0) {
        self.valor1 = [self.tResultado.text intValue];
        self.operacion = 0;
        NSLog(@"valor1 %d",self.valor1);
  //  }

    self.tResultado.text=@"+";
}

- (IBAction)bResta:(id)sender {
  //  if (self.valor1 == 0) {
        self.valor1 = [self.tResultado.text intValue];
        self.operacion = 1;
        NSLog(@"valor1 %d",self.valor1);
  //  }

    self.tResultado.text=@"-";
}

- (IBAction)bIgual:(id)sender {
    //NSInteger webos = [self calcular:1 a:1 conOp:0];
    
    // NSLog(@"String with one int %d",webos);
   // if (self.valor2 == 0) {
        self.valor2 = [self.tResultado.text intValue];
        NSLog(@"valor2 %d",self.valor2);
   // }
    
    self.resultado = [self calcular:self.valor1 a:self.valor2 conOp:self.operacion];

    self.tResultado.text=@"=";
    NSLog(@"resultado %d",self.resultado);
    self.tHistorial.text = [NSString stringWithFormat: @"%d", (int)self.resultado];
    
   // self.valor1 = 0;
   // self.valor2 = 0;
    
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
