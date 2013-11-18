//
//  DetalleViewController.h
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Receta.h"

@interface DetalleViewController : UIViewController

@property(strong,nonatomic) Receta *receta;

@property (weak, nonatomic) IBOutlet UILabel *tituloLabel;

@property (weak, nonatomic) IBOutlet UITextView *ingredientesTextView;

@property (weak, nonatomic) IBOutlet UITextView *descripcionTextView;

@property (weak, nonatomic) IBOutlet UITextView *notasTextView;

@property (weak, nonatomic) IBOutlet UIImageView *imagenImageView;

@end
