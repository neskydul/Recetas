//
//  NuevaRecetaViewController.h
//  Recetas
//
//  Created by Ana Pujana on 13/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Receta.h"


@protocol NuevaRecetaDelegate <NSObject>

//al metodo nuevaReceta le voy a pasar un objeto receta de la clase Receta
-(void)nuevaReceta:(Receta *)receta;

@end


@interface NuevaRecetaViewController : UIViewController


//este es el nuevo objeto que aplicará los métodos delegados

@property (nonatomic,strong) id <NuevaRecetaDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextField *tituloTextField;
@property (weak, nonatomic) IBOutlet UITextView *guardarIngredientesTextView;

@property (weak, nonatomic) IBOutlet UITextView *guardarDescripcionTextView;





- (IBAction)guardarPulsarBoton:(id)sender;
- (IBAction)cancelarPulsarBoton:(id)sender;

@end
