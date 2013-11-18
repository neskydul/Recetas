//
//  EditarViewController.m
//  Recetas
//
//  Created by Ana Pujana on 18/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import "EditarViewController.h"

@interface EditarViewController ()

@end

@implementation EditarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    self.editarNombreTextField.text= self.receta.titulo;
    self.editarIngredientesTextView.text= self.receta.ingredientes;
    self.editarDescripcionTextView.text= self.receta.descripcion;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelEditing:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
