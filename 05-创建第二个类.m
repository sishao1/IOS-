# import <Foundation/Foundation.h>

@interface  Car : NSObject
{
@public
int wheels;
int speed;
}
-(void)run;

@end

@implementation Car

-(void)run
{
    NSLog(@"这辆车子跑起来了");
}

@end

int main()
{
    Car * p = [Car new];
    p->wheels=4;
    p->speed=250;
    NSLog(@"这辆车子有%d 个轮子，有%d km/h的速度",p->wheels,p->speed);
    [p run];
    return 0;
    
}
