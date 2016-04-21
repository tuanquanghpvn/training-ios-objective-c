//
//  EmployeeService.m
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "EmployeeService.h"
#import "EmployeeRespository.h"

@interface EmployeeService () {
    EmployeeRespository *employeeRespository;
}
@end

@implementation EmployeeService

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        employeeRespository = [EmployeeRespository new];
    }
    return self;
}

- (NSMutableArray *)getAllEmployee {
    NSMutableArray *result = [employeeRespository getAllEmployee];
    return result;
}

- (NSMutableArray *)getAllEmployeeByDepartment: (NSUUID *) deparmentID {
    NSMutableArray *result = [employeeRespository getAllEmployeeByDepartment:deparmentID];
    return result;
}

- (void)addEmployee:(EmployeeDTO *)employee {
    [employeeRespository addEmployee:employee];
}

@end
