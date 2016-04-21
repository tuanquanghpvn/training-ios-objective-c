//
//  ListDepartmentTableViewController.h
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DepartmentService.h"

@interface ListDepartmentTableViewController : UITableViewController

@property (nonatomic) DepartmentService *departmentService;
@property (nonatomic) NSArray *tableDataDepartment;

@end
