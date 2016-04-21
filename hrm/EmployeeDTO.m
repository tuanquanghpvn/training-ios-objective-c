//
//  EmployeeDTO.m
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "EmployeeDTO.h"

@implementation EmployeeDTO

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        self.id = [[NSUUID UUID] UUIDString];
    }
    return self;
}

@end
