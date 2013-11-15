//
//  Receta.h
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Receta : NSObject

@property (nonatomic,strong) NSString *titulo;
@property (nonatomic,strong) NSString *ingredientes;
@property (nonatomic,strong) NSString *descripcion;
@property (nonatomic,strong) NSString *notas;
@property (nonatomic,strong) NSString *imagen;


@end
