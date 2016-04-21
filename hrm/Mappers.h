//
//  Mappers.h
//  hrm
//
//  Created by  on 4/18/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DepartmentDTO.h"
#import "DepartmentEntity.h"
#import "EmployeeDTO.h"
#import "EmployeeEntity.h"

@interface Mappers : NSObject

+ (void)mapDepartmentDTO: (DepartmentDTO *) department from: (DepartmentEntity *) entity;
+ (void)mapDepartmentEntity: (DepartmentEntity *) entity from: (DepartmentDTO *) department;
+ (DepartmentDTO *)convertToDepartmentDTO: (DepartmentEntity *) entity;

+ (void)mapEmployeeDTO: (EmployeeDTO *) employee from: (EmployeeEntity *) entity;
+ (void)mapEmployeeEntity: (EmployeeEntity *) entity from: (EmployeeDTO *) employee;
+ (EmployeeDTO *)convertToEmployeeDTO: (EmployeeEntity *) entity;

@end
