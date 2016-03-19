# import <Foundation/Foundation.h>
@interface Car : NSObject
{
    @public
    int speed;
}
-(int)compareSpeedWithOther : (Car *)otherCar;
@end
@implementation Car
-(int)compareSpeedWithOther : (Car *)otherCar;
{
    return (speed-otherCar->speed);
}
@end
int main()
{
    Car * p1=[Car new];
    Car * p2=[Car new];
    p1->speed=300;
    p2->speed=250;
    int a=[p1 compareSpeedWithOther:p2];
    NSLog(@"两者的速度差：%dkm/h",a);
    return 0;
}
