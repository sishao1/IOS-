# import <Foundation/Foundation.h>

@interface Car : NSObject
{
    @public
    int wheel;
    int speed;
}
-(void)run;
@end

@implementation Car
-(void)run
{
    NSLog(@"有%d个轮子，有%dkm/h的车子跑起来了",wheel,speed);
}
@end

void test(Car * newp)
{
    newp->speed=300;
}

int main()
{
    Car *p=[Car new];
    p->wheel=40;
    p->speed=250;
    test(p);
    [p run];
    
    
    return 0;
}