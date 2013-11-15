//
//  ListadoViewController.h
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NuevaRecetaViewController.h"


@protocol ListadoViewControllerDelegate <NSObject>

//al metodo nuevaReceta le voy a pasar un objeto receta de la clase Receta
-(void)nuevaReceta:(Receta *)receta;

@end

@interface ListadoViewController : UITableViewController <NuevaRecetaDelegate>


@property (nonatomic,strong) id <ListadoViewControllerDelegate> delegate;



@end
