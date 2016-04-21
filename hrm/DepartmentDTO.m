//
//  DepartmentDTO.m
//  hrm
//
//  Created by  on 4/18/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

#import "DepartmentDTO.h"

@implementation DepartmentDTO

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        self.id = [[NSUUID UUID] UUIDString];
    }
    return self;
}

@end
