# import <Foundation/Foundation.h>

@interface Animal : NSObject

- (void)walk;
@end

@implementation Animal

- (void)walk
{
    NSLog(@"所有生物都可以行走");
    
}

@end

@interface Dog : Animal

@end

@implementation Dog

@end

int main()
{
    Animal * p = [Dog new];
   
    [p walk];
    return 0;
}