//
//  Person.h
//  YYSaveModel
//
//  Created by yangyu on 2017/9/15.
//  Copyright © 2017年 yangyu. All rights reserved.
//

#import "YYSaveModel.h"

@interface Person : YYSaveModel
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;

+ (void)setPerosnM:(Person *)personM;
+ (Person *)getPersonM;
+ (void)deletePersonM;
@end
