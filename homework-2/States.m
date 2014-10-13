//
//  States.m
//  homework-2
//
//  Created by Braulio on 12/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "States.h"
#import "cellStates.h"
#import "Details.h"
#import "Declarations.h"

@interface States ()

@end

@implementation States

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maStates    =  [NSMutableArray arrayWithObjects: @"Jalisco", @"Colima", @"Guanajuato", @"Chiapas.jpg", @"Sonora", @"Oaxaca", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"cellStates";
    
    cellStates *cell = (cellStates *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellStates alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblState.text       = maStates[indexPath.row];
    //cell.imgPerson.image    = [UIImage imageNamed:maImages[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
    //switch (self.segOut.selectedSegmentIndex) {
        //case 0:
            //self.lblDispNam.text = maNames[indexPath.row];
            //break;
        ///case 1:
            //self.lblDispNam.text = maNames2 [indexPath.row];
            //self.imagenf.image    = [UIImage imageNamed:[maImages objectAtIndex:indexPath.row]];
            //break;
            // default:
            //    break;
   // }
//}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
