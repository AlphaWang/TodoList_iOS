//
//  TodoItem.h
//  ToDoList
//
//  Created by ZhongxingWang on Apr/1/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
