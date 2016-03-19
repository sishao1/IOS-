/*
 僵尸
 
 跳跃僵尸具有行走的方法走
 
 */
# import <Foundation/Foundation.h>

@interface Zoombie : NSObject
- (void)walk;

+ (void)walk;
@end

@implementation Zoombie

- (void)walk
{
    NSLog(@"往前挪两步——————————");
}

+ (void)walk
{
    NSLog(@"僵尸有毒！！！！");
}
@end

@interface jumpZoombie : Zoombie

@end

@implementation jumpZoombie

- (void)walk
{
    NSLog(@"往前疯狂地跳十步");
    [super walk];
}

+ (void)walk
{
    [super walk];

}

@end
int main()
{
    [jumpZoombie walk];
    jumpZoombie *p = [jumpZoombie new];
    [p walk];
    
    return 0;
}