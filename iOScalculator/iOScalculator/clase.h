//
//  clase.h
//  iOScalculator
//
//  Created by sergio ivan lopez monzon on 16/07/14.
//  Copyright (c) 2014 Emmanuel Valentin Granados Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface clase : NSObject
-(NSInteger)suma:(NSInteger) valor1 mas:(NSInteger)valor2;
-(NSInteger)restar:(NSInteger)valor1 menos:(NSInteger)valor2;
-(NSInteger)multiplicar:(NSInteger)valor1 por:(NSInteger)valor2;
-(NSInteger)dividir:(NSInteger)valor1 entre:(NSInteger)valor2;
@end
