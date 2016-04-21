//
//  ListEmployeeTableViewController.h
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DepartmentDTO.h"
#import "EmployeeService.h"

extern NSString *dataSelectedDepartment;

@interface ListEmployeeTableViewController : UITableViewController

@property (nonatomic) EmployeeService *employeeService;
@property (nonatomic, strong) NSArray *arrayEmployee;
@property (nonatomic, strong) DepartmentDTO *departmentSelected;

@end
