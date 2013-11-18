//
//  EditarViewController.h
//  Recetas
//
//  Created by Ana Pujana on 18/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Receta.h"

@interface EditarViewController : UIViewController;

@property(strong,nonatomic) Receta *receta;

@property (weak, nonatomic) IBOutlet UITextField *editarNombreTextField;
@property (weak, nonatomic) IBOutlet UITextView *editarIngredientesTextView;
@property (weak, nonatomic) IBOutlet UITextView *editarDescripcionTextView;

- (IBAction)cancelEditing:(id)sender;

@end
