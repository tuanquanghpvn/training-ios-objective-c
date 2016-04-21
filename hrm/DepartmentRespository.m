//
//  DepartmentRespository.m
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "DepartmentRespository.h"
#import <MagicalRecord/MagicalRecord.h>
#import "DepartmentEntity.h"
#import "Mappers.h"

@implementation DepartmentRespository

- (NSMutableArray *)getAllDepartment {
    NSMutableArray *departmentDTOs = [NSMutableArray new];
    NSArray *departmentEntities = [DepartmentEntity MR_findAll];
    
    for (DepartmentEntity *departmentEntity in departmentEntities) {
        DepartmentDTO *itemMap = [Mappers convertToDepartmentDTO:departmentEntity];
        [departmentDTOs addObject:itemMap];
    }
    
    return departmentDTOs;
}

- (void)addDepartment: (DepartmentDTO *) department {
    [MagicalRecord saveWithBlockAndWait:^(NSManagedObjectContext * _Nonnull localContext) {
        DepartmentEntity *departmentEntity = [DepartmentEntity MR_createEntityInContext:localContext];
        [Mappers mapDepartmentEntity: departmentEntity from: department];
    }];
}

@end
