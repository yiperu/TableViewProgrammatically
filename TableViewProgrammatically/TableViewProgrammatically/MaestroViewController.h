//
//  MaestroViewController.h
//  TableViewProgrammatically
//
//  Created by Henry AT on 9/26/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaestroViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *tableList, *colorList;

@end
