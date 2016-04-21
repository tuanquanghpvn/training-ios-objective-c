//
//  EmployeeEntity+CoreDataProperties.h
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "EmployeeEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface EmployeeEntity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *active;
@property (nullable, nonatomic, retain) NSDate *birthDate;
@property (nullable, nonatomic, retain) NSString *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *phone;
@property (nullable, nonatomic, retain) NSString *placeOfBirth;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) DepartmentEntity *department;

@end

NS_ASSUME_NONNULL_END
