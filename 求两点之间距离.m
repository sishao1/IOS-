//计算两点之间的距离

# import <Foundation/Foundation.h>
# import <math.h>

@interface PointCD : NSObject
{
    double _x; // 点的横坐标
    double _y; // 点的纵坐标
}

- (void)setX:(double)x andY:(double)Y;

- (double)distanceWithOtherPoint:(PointCD *)p1;

+ (double)distanceBetweenTwoPoint:(PointCD *)p1 andOther:(PointCD *)p2;
@end

@implementation PointCD

- (void)setX:(double)x andY:(double)y
{
    _x = x;
    _y = y;
}

- (double)distanceWithOtherPoint:(PointCD *)p2 // 求x与y之间的距离
{
    double xDelta1 = self->_x - p2->_x;
    double xDeltaF1 = pow(xDelta1,2);
    double xDelta2 = self->_y - p2->_y;
    double xDeltaF2 = pow(xDeltaF2,2);
    double distance = sqrt(xDeltaF1 - xDeltaF2);
    return distance;
    
}

+ (double)distanceBetweenTwoPoint:(PointCD *)p1 andOther:(PointCD *)p2
{
    double xDeltaF3 = [PointCD distanceBetweenTwoPoint:p1 andOther:p2];
    return xDeltaF3;
}
@end

int main(void)
{
    PointCD *p1 = [PointCD new];
    PointCD *p2 = [PointCD new];
    [p1 setX:2 andY:3];
    [p2 setX:4 andY:5];
    double a = [PointCD distanceBetweenTwoPoint:p1 andOther:p2];
    NSLog(@"%f",a);
    return 0;
}