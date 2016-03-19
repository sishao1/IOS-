# import <Foundation/Foundation.h>

@interface Student : NSObject
{
    int age;//学生的年纪
}
- (void)setAge:(int)newAge;//通过方法对学生年纪这个值进行传递，即封装

- (void)study;//学生在什么年纪进行读书

- (int)age;

@end

@implementation Student

- (void)study
{
    NSLog(@"学生在%d岁时开始学习" ,age);
}

- (void)setAge:(int)newAge
{
    if(newAge <= 0)
    {
        newAge = 1;
    }
    age = newAge;
}

- (int)age
{
    return age;
}
@end

int main()
{
    Student *p = [Student new];
    [p setAge:-10];
    [p study];
    int a = [p age];
    NSLog(@"学生在%d岁开始学习" ,a);
    return 0;
}