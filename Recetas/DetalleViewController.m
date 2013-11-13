//
//  DetalleViewController.m
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()

@end

@implementation DetalleViewController

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
    
    self.tituloLabel.text= self.receta.titulo;
    self.ingredientesTextView.text= self.receta.ingredientes;
    self.descripcionTextView.text= self.receta.descripcion;
    self.notasTextView.text= self.receta.notas;
    
    
  
    
    
     [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//para cuando ya ha pargado la vista, antes de mostrarla
-(void)viewDidAppear:(BOOL)animated
{
   
}

@end
