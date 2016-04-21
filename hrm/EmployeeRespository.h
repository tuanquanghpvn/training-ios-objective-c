//
//  EmployeeRespository.h
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmployeeDTO.h"

@interface EmployeeRespository : NSObject

- (NSMutableArray *)getAllEmployee;
- (NSMutableArray *)getAllEmployeeByDepartment: (NSUUID *)departmentID;
- (void)addEmployee: (EmployeeDTO *) employee;

@end
