//
//  EmployeeService.h
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmployeeDTO.h"

@interface EmployeeService : NSObject

- (NSMutableArray *)getAllEmployee;
- (NSMutableArray *)getAllEmployeeByDepartment: (NSUUID *) deparmentID;
- (void)addEmployee: (EmployeeDTO *) employee;

@end
