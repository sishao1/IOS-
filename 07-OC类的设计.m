
# import<Foundation/Foundation.h>
typedef enum{
    Sexman,
    Sexwoman
}Sex;
typedef struct{
    int year;
    int month;
    int day;
}Date;
typedef enum{
    FavBlack,
    FavGreen,
    FavWhite,
    FavBlue
}Favcolor;

/*
 学生
 成员变量：性别、生日、体重、最喜欢的颜色、狗（体重、毛色、吃、跑）
 方法：吃、跑步、遛狗、喂狗
*/
@interface Dog : NSObject
{
@public
    int weight;//狗的体重  
    Favcolor curcolor;//狗的毛色
}
-(void)eat;
-(void)run;
@end
@implementation Dog
-(void)eat
{
    weight+=1;
    NSLog(@"韩娜喂狗使得狗的体重变为%d",weight);
}
-(void)run
{
    weight-=1;
    NSLog(@"韩娜遛狗使得狗的体重变为%d",weight);
}
@end


@interface Student : NSObject
{
    @public
    Sex sex;//性别
    Date birthday;//生日
    int weight;//体重
    Favcolor color;
    Dog * dog;
    
}  //最喜欢的颜色
    -(void)run;
    -(void)eat;
    -(void)weidog;
    -(void)liudog;
    -(void)print;
@end
@implementation Student
-(void)run
{
    weight-=1;
    
}
-(void)eat
{
    weight+=1;
}
    -(void)weidog
    {
        [dog eat];
    }
    -(void)liudog
    {
        [dog run];
    }
    -(void)print
    {
        NSLog(@"韩娜的性别为%d,生日为%d-%d-%d,体重为%dkg,最喜欢的颜色为%d",sex,birthday.year,birthday.month,birthday.day,weight,color);
    }
@end

int main()
{
    Student * p =[Student new];
    p->sex=Sexwoman;
    Date d={1996,9,28};
    d=p->birthday;
    p->weight=70;
    p->color=FavWhite;
    [p print];
    
    Dog * p1=[Dog new];
    p1->weight=20;
    p1->curcolor=FavBlue;
    [p weidog];
    [p liudog];
    return 0;
}

