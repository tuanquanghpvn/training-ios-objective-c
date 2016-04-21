//
//  DesignationEntity+CoreDataProperties.h
//  hrm
//
//  Created by  on 4/20/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "DesignationEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface DesignationEntity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *id;
@property (nullable, nonatomic, retain) NSString *name;

@end

NS_ASSUME_NONNULL_END
