//
//  MaestroViewController.m
//  TableViewProgrammatically
//
//  Created by Henry AT on 9/26/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "MaestroViewController.h"
#import "DetalleViewController.h"

@interface MaestroViewController ()

@end

@implementation MaestroViewController
@synthesize tableList, colorList;

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
    // Do any additional setup after loading the view from its nib.
    
    self.tableList = [[NSArray alloc] initWithObjects:@"Rojo",@"Verde",@"Azul",@"Amarillo",@"Negro", nil];
    self.colorList = [[NSArray alloc] initWithObjects:@"red.png",@"green.png",@"blue.png",@"yellow.png",@"black.png", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableList count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configuramos la celda
    cell.textLabel.text = [self.tableList objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.colorList objectAtIndex:indexPath.row]];
    return cell;
}













@end
