//
//  Friends.m
//  homework-2
//
//  Created by Braulio on 12/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "Friends.h"
#import "cellWelcome.h"
#import "Details.h"
#import "Declarations.h"

@interface Friends ()

@end

@implementation Friends

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maNamesfriends = [NSMutableArray arrayWithObjects: @"Candelario", @"José", @"Milagros", @"Hugo", @"Raúl", nil];
    maLastnamefriends = [NSMutableArray arrayWithObjects: @"Núñez", @"García", @"Zuñiga", @"Valerio", @"Tores", nil];
    maAgefriends = [NSMutableArray arrayWithObjects: @"26", @"25", @"27", @"29", @"30", nil];
    
    maNamesfriendsw = [NSMutableArray arrayWithObjects: @"Víctor", @"Susan", @"Damián", @"Gustavo", @"Blanca", nil];
    maLastnamefriendsw = [NSMutableArray arrayWithObjects: @"García", @"Delgado", @"Zermeño", @"Galindo", @"Villalvazo", nil];
    maAgefriendsw = [NSMutableArray arrayWithObjects: @"39", @"28", @"27", @"26", @"30", nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 66;
}
//-------------------------------------------------------------------------------


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"cellWelcome";
    
    cellWelcome *cell = (cellWelcome *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellWelcome alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (self.segmented.selectedSegmentIndex) {
        case 0:
            cell.lblName.text = maNamesfriends[indexPath.row];
            // cell.imgPerson.image    = [UIImage imageNamed:maImages[indexPath.row]];
            break;
        case 1:
            cell.lblName.text = maNamesfriendsw[indexPath.row];
            // cell.imgPerson.image    = [UIImage imageNamed:maImages[indexPath.row]];
            break;
        default:
            break;
    }
    
    /* if (posState == 0) {
     cell.lblCity.text = maCities[indexPath.row];
     } else {
     cell.lblCity.text = maCities[(posState*3)+indexPath.row];
     }*/
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (self.segmented.selectedSegmentIndex) {
        case 0:
            self.Name.text = maNamesfriends[indexPath.row];
            self.Lastname.text = maLastnamefriends[indexPath.row];
            self.Age.text = maAgefriendsw[indexPath.row];
            //self.Name.text = maNamesfriends[indexPath.row];
            break;
        case 1:
            self.Name.text = maNamesfriendsw [indexPath.row];
            self.Lastname.text = maLastnamefriendsw[indexPath.row];
            self.Age.text = maAgefriendsw[indexPath.row];
            //self.Name.text = maNamesfriends[indexPath.row];
            //  self.imagenf.image    = [UIImage imageNamed:[maImages objectAtIndex:indexPath.row]];
        break;
            // default:
            //    break;
    }
}
- (IBAction)segmentedchange:(id)sender {
    [self.tblMain reloadData];
    [super viewDidLoad];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
