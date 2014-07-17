//
//  ViewController.h
//  iOScalculator
//
//  Created by Emmanuel Valentín Granados López on 16/07/14.
//  Copyright (c) 2014 Emmanuel Valentin Granados Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)bBorrar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *tHistorial;
- (IBAction)bDivision:(id)sender;
- (IBAction)bMultiplicacion:(id)sender;
- (IBAction)bIgual:(id)sender;
- (IBAction)bSuma:(id)sender;
- (IBAction)bResta:(id)sender;
- (IBAction)bCero:(id)sender;
- (IBAction)bNueve:(id)sender;
- (IBAction)bOcho:(id)sender;
- (IBAction)bSiete:(id)sender;
- (IBAction)bSeis:(id)sender;
- (IBAction)bCinco:(id)sender;
- (IBAction)bCuatro:(id)sender;
- (IBAction)bTres:(id)sender;
- (IBAction)bDos:(id)sender;
- (IBAction)bUno:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *tResultado;

-(int) calcular:(int)val1 a:(int)val2 conOp:(int)operacion;

@end
