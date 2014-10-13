//
//  Friends.h
//  homework-2
//
//  Created by Braulio on 12/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Friends : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblMain;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmented;
@property (strong, nonatomic) IBOutlet UILabel *Name;
@property (strong, nonatomic) IBOutlet UILabel *Lastname;
@property (strong, nonatomic) IBOutlet UILabel *Age;
//@property (strong, nonatomic) IBOutlet UIImageView *image;
@end
