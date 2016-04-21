//
//  EmployeeDTO.h
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DepartmentDTO.h"

@interface EmployeeDTO : NSObject

@property (nonatomic) NSString *id;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *phone;
@property (nonatomic) NSDate *birthDate;
@property (nonatomic) NSString *placeOfBirth;
@property (nonatomic, assign) BOOL active;
@property (nonatomic, assign) BOOL status;
@property (nonatomic) DepartmentDTO *department;

@end
