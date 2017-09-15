# YYSaveTool

YYSaveTool runtime实现一键归档 使用如下

# 使用方法

### 创建model继承YYSaveModel 定义你想要的存储的属性

@interface Person : YYSaveModel

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *age;

+ (void)setPerosnM:(Person *)personM;
+ (Person *)getPersonM;
+ (void)deletePersonM;
@end

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


# 安装
1. 下载YYSaveTool文件夹内的所有内容
2. 将YYSaveTool内的源文件添加(拖放)到你的工程。
3. 继承YYSaveModel

