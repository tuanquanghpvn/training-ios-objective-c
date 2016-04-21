//
//  DepartmentRespository.h
//  hrm
//
//  Created by  on 4/14/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DepartmentDTO.h"

@interface DepartmentRespository : NSObject

- (NSMutableArray *)getAllDepartment;
- (void)addDepartment: (DepartmentDTO *) department;

@end
