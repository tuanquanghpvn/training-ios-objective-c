//
//  Mappers.m
//  hrm
//
//  Created by  on 4/18/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "Mappers.h"

@implementation Mappers

+ (void)mapDepartmentDTO: (DepartmentDTO *)department from: (DepartmentEntity *)entity {
    department.id = entity.id;
    department.name = entity.name;
}

+ (void)mapDepartmentEntity: (DepartmentEntity *)entity from: (DepartmentDTO *)department {
    entity.id = department.id;
    entity.name = department.name;
}

+ (DepartmentDTO *)convertToDepartmentDTO: (DepartmentEntity *) entity {
    DepartmentDTO *departmentDTO = [DepartmentDTO new];
    [Mappers mapDepartmentDTO:departmentDTO from:entity];
    return departmentDTO;
}

+ (void)mapEmployeeDTO: (EmployeeDTO *) employee from: (EmployeeEntity *) entity {
    employee.id = entity.id;
    employee.name = entity.name;
    employee.phone = entity.phone;
    employee.birthDate = entity.birthDate;
    employee.placeOfBirth = entity.placeOfBirth;
    employee.active = entity.active;
    employee.status = entity.status;
    employee.department = [Mappers convertToDepartmentDTO:entity.department];
}

+ (void)mapEmployeeEntity: (EmployeeEntity *) entity from: (EmployeeDTO *) employee {
    entity.id = employee.id;
    entity.name = employee.name;
    entity.phone = employee.phone;
    entity.birthDate = employee.birthDate;
    entity.placeOfBirth = employee.placeOfBirth;
    entity.active = [NSNumber numberWithBool:employee.active];
    entity.status = [NSNumber numberWithBool:employee.status];
}

+ (EmployeeDTO *)convertToEmployeeDTO: (EmployeeEntity *) entity {
    EmployeeDTO *employeeDTO = [EmployeeDTO new];
    [Mappers mapEmployeeDTO:employeeDTO from:entity];
    return employeeDTO;
}

@end
