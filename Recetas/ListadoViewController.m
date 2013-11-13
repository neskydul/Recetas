//
//  ListadoViewController.m
//  Recetas
//
//  Created by Ana Pujana on 12/11/13.
//  Copyright (c) 2013 Ana Pujana. All rights reserved.
//

#import "ListadoViewController.h"
//importamos la clase Receta para asignarla valores
#import "Receta.h"
#import "DetalleViewController.h"


@interface ListadoViewController (){
    NSMutableArray *mRecetarioArray;

}

@end

@implementation ListadoViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

 
   
   
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Chalkboard-background.jpg"]];
  
    
    
    //inicializamos array mutable vacío
    mRecetarioArray =[[NSMutableArray alloc] init];
    //metemos unos datos
    
    Receta *receta =[[Receta alloc]init];
    //al ser un seter y mandarle un mensaje, entre corchetes
    [receta setTitulo:@"Tortilla de Patata"];
    [receta setIngredientes:@"Patatas, Huevos, cebolla, sal y aceite"];
    
    
    //tambien poodemos hacer el seter con .
    receta.descripcion = @"Pela y pica la cebolla en dados medianos. Limpia el pimiento verde, retírale el tallo y las pepitas y córtalo en dados. Si las patatas estuvieran sucias, pásalas por agua. Pélalas, córtalas por la mitad a lo largo y después corta cada trozo en medias lunas finas de 1/2 centímetro. Introduce todo en la sartén, sazona a tu gusto y fríe a fuego suave durante 25-30 minutos. \nRetira la fritada y escúrrela. Pasa el aceite a un recipiente y resérvalo. Limpia la sartén con papel absorbente de cocina. Casca los huevos, colócalos en un recipiente grande y bátelos. Sálalos a tu gusto, agrega la fritada de patatas, cebolla y pimiento y mezcla bien. Coloca la sartén nuevamente en el fuego, agrega un chorrito del aceite reservado y agrega la mezcla. Remueve un poco con una cuchara de madera y espera (20 segundos) a que empiece a cuajarse. Separa los bordes, cubre la sartén con un plato de mayor diámetro que la sartén y dale la vuelta. Échala de nuevo para que cuaje por el otro lado.";
    
    receta.notas =@"Notas personales de la receta";
    
    
    [mRecetarioArray addObject:receta];
    
    
    
    //inicializamos otro espacio para que nos de otra posición de momoria y no machaque el anterior
    receta =[[Receta alloc]init];
    
    receta.titulo =@"Fajitas de pollo";
    receta.ingredientes=@"Pollo, lechuga, tomate, maiz, uvas pasas, cebolleta";
    receta.descripcion = @"Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per.";
    
    receta.notas =@"Notas personales de la receta";
    
    [mRecetarioArray addObject:receta];
    
    
    [super viewDidLoad];
    
    
    

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [mRecetarioArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    Receta * receta =[mRecetarioArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text= [NSString stringWithFormat:@"%@",receta.titulo];
    cell.tag = indexPath.row;
    
    
    
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.font = [UIFont fontWithName:@"Chalkduster" size:25 ];
    cell.textLabel.textColor =[UIColor whiteColor];
    
    
    
    
    return cell;
}

#pragma mark - PreapareForSegue


//hace referencia a la transición segue es el destino de transición
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"irAdetalle"]) {
        DetalleViewController *detalleViewController =(DetalleViewController *)segue.destinationViewController;
        
        UITableViewCell *cell =(UITableViewCell*)sender;
        detalleViewController.receta =[mRecetarioArray objectAtIndex:cell.tag];
    }
    
    else
    {
        if ([segue.identifier isEqualToString:@"irAnuevaReceta"]) {
            NuevaRecetaViewController *nuevaRecetaViewController =(NuevaRecetaViewController *)segue.destinationViewController;
            nuevaRecetaViewController.delegate =self;
        }
    }
}

#pragma mark - NuevaRecetaDelegate

-(void)nuevaReceta:(Receta *)receta
{
    [mRecetarioArray addObject:receta];
    [self.tableView reloadData];
}

@end
