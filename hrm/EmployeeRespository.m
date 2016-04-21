//
//  EmployeeRespository.m
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "EmployeeRespository.h"
#import <MagicalRecord/MagicalRecord.h>
#import "EmployeeEntity.h"
#import "Mappers.h"

@implementation EmployeeRespository

- (NSMutableArray *)getAllEmployee {
    NSMutableArray *employeeDTOs = [NSMutableArray new];
    NSArray *employeeEntities = [EmployeeEntity MR_findAll];
    
    for (EmployeeEntity *entity in employeeEntities) {
        EmployeeDTO *itemMap = [Mappers convertToEmployeeDTO:entity];
        [employeeDTOs addObject:itemMap];
    }
    
    return employeeDTOs;
}

- (NSMutableArray *)getAllEmployeeByDepartment: (NSUUID *)departmentID {
    NSMutableArray *employeeDTOs = [NSMutableArray new];
    
    NSString *filter = [NSString stringWithFormat:@"department.id = '%@'", departmentID];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:filter];
    NSArray *employeeEntities = [EmployeeEntity MR_findAllWithPredicate:predicate];
    for (EmployeeEntity *entity in employeeEntities) {
        EmployeeDTO *itemMap = [Mappers convertToEmployeeDTO:entity];
        [employeeDTOs addObject:itemMap];
    }
    
    return employeeDTOs;
}

- (void)addEmployee: (EmployeeDTO *) employee {
    [MagicalRecord saveWithBlockAndWait:^(NSManagedObjectContext * _Nonnull localContext) {
        EmployeeEntity *employeeEntity = [EmployeeEntity MR_createEntityInContext:localContext];
        
        NSString *filter = [NSString stringWithFormat:@"id = '%@'", employee.department.id];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:filter];
        DepartmentEntity *departmentEntity = [DepartmentEntity MR_findFirstWithPredicate:predicate inContext:localContext];
        [Mappers mapEmployeeEntity:employeeEntity from:employee];
        employeeEntity.department = departmentEntity;
    }];
}

@end
