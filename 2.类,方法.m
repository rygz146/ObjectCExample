//代码3-1
#import <Foundation/Foundation.h>
int main(int argc,char * argv[])
{
	@autoreleasepool{
		int a=1;
		int b=3;
		NSLog(@"%i/%i",a,b);
	}
}
//代码3-2
#import <Foundation/Foundation.h>
//@interface部分 描述类和类的方法
@interface Fraction:NSObject//类的名称为Fraction，继承自NSObject
-(void) print;
-(void)	setA:(int) a1;//向指定方法传int类型的a1�
-(void) setB:(int) b1;
@end
//@implementation部分 描述数据
@implementation Fraction
{
	int a;
	int b;
}
-(void) print
{
	NSLog(@"%i/%i",a,b);
}
-(void) setA:(int) a1
{
	a=a1;
}
-(void) setB:(int) b1
{
	b=b1;
}
@end
//操作数据
int main(int argc,char * argv[])
{
	@autoreleasepool{
		Fraction *f;//定义对象
		f=[Fraction alloc];//分配内存
		f=[f init];//初始化对象-> f=[[Fraction alloc] init];
		[f setA:1];//向setA发送消息，并提供一个值为1的参数，存储到a1中
		[f setB:3];
		NSLog(@"The num is");
		[f print];//试用消息表达式调用print方法
	}
	return 0;
}
//声明方法
-(int) functions;
-(void) functions:(int) a;

//练习7
#import <Foundation/Foundation.h>
@interface Check:NSObject
-(void) showxy;
-(void) setX:(int) x1;
-(void) setY:(int) y1;
@end
@implementation Check
{
	int x;
	int y;
}
-(void) showxy
{
	NSLog('x is %i,y is %i',x,y)
}
-(void) setX:(int) x1
{
	x=x1;
}
-(void) setY:(int) y1
{
	y=y1;
}
@end
int main(int argc,char * argv[])
{
	@autoreleasepool{
		Fraction *f=[[Fraction alloc] init];
		[f setX:1];
		[f setY:2];
		[f showxy];
	}
	return 0;
}




