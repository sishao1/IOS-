#import <Foundation/Foundation.h>
# include<stdio.h>
@interface jisuanqi : NSObject
-(double)pi;
-(int)pingfang : (int)num;
-(int)sumWithSum : (int)num1 andNum2:(int)num2;
@end
@implementation jisuanqi
-(double)pi
{
    return 3.141592;
}
-(int)pingfang : (int)num
{
    return num*num;
}
-(int)sumWithSum : (int)num1 andNum2:(int)num2
{
    return num1+num2;
}
@end
int main()
{
    jisuanqi * p=[jisuanqi new];
    double a1=[p pi];
    scanf("%d",&num1);
    int a2=[p pingfang:num1];
    scanf("%d %d",&num2,&num3);
    int a3=[p sumWithSum :num2 andNum2:num3];
    NSLog(@"想输入的值为%f,%d,%d",a1,a2,a3);
    return 0;
}