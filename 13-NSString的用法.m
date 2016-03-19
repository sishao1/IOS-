# import <Foundation/Foundation.h>


int main()
{
    int number = 100;
    int age = 15;
    NSString *str = @"我觉得韩娜好丑";
    NSString *newstr = [NSString stringWithFormat:@"韩娜的学号是%d，她的年龄是%d，%@",number,age,str];
    NSLog(@"-----%@",newstr);
    return 0;
}