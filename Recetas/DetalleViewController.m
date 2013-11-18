//
//  DetalleViewController.m
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import "DetalleViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "EditarViewController.h"




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
    self.imagenImageView.image= [UIImage imageNamed:self.receta.imagen];
    
    
    _imagenImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    _imagenImageView.layer.shadowOffset = CGSizeMake(0, 1);
   _imagenImageView.layer.shadowOpacity = 1;
    _imagenImageView.layer.shadowRadius = 9.0;
 
    
 
    
 
    

    
    
    
    
    
  
    
    
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



#pragma mark -Navigation

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EditarReceta"]) {
        
       EditarViewController *editarViewController =(EditarViewController *)segue.destinationViewController;
        
       
        editarViewController.receta =self.receta;
        
        
        
        
        
        
        
        
        
        
    }
}
 






@end

