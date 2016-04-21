//
//  DepartmentService.m
//  hrm
//
//  Created by  on 4/18/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "DepartmentService.h"
#import "DepartmentRespository.h"

@interface DepartmentService() {
    DepartmentRespository *departmentRespository;
}
@end

@implementation DepartmentService

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        departmentRespository = [DepartmentRespository new];
    }
    return self;
}

- (NSMutableArray *)getAllDepartment {
    NSMutableArray *result = [departmentRespository getAllDepartment];
    return result;
}

- (void)addDepartment: (DepartmentDTO *) department {
    [departmentRespository addDepartment: department];
}

@end
