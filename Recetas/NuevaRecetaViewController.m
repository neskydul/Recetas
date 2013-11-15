//
//  NuevaRecetaViewController.m
//  Recetas
//
//  Created by Ana Pujana on 13/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import "NuevaRecetaViewController.h"

@interface NuevaRecetaViewController ()

@end

@implementation NuevaRecetaViewController

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
	self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Chalkboard-background.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardarPulsarBoton:(id)sender
{
    
    
    if (self.delegate !=nil)
    {
        //inicializamos objeto receta de la clase Receta
        Receta *receta = [[Receta alloc]init];
        
        receta.titulo = self.tituloTextField.text;
        receta.ingredientes =self.guardarIngredientesTextView.text;
        receta.descripcion =self.guardarDescripcionTextView.text;
        
        
        //tenemos que llamar al delegado para guardar ese contacto en quien implement el delegado.
        
        [self.delegate nuevaReceta:receta];
    }
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
   
    
    
    
}

- (IBAction)cancelarPulsarBoton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
