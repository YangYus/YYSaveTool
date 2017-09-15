//
//  Person.m
//  YYSaveModel
//
//  Created by yangyu on 2017/9/15.
//  Copyright © 2017年 yangyu. All rights reserved.
//

#import "Person.h"
#define PersonKey @"product"
@implementation Person
+ (void)setPerosnM:(Person *)personM {
    NSUserDefaults *userDefalts = [NSUserDefaults standardUserDefaults];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:personM];
    [userDefalts setObject:data forKey:PersonKey];
    [userDefalts synchronize];
}

+ (Person *)getPersonM {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [userDefaults objectForKey:PersonKey];
    Person *person = nil;
    if (data) {
        person = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    return person;
}

+ (void)deletePersonM {
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:PersonKey];
}
@end
