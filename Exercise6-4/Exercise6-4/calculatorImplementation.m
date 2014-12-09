#import <Foundation/Foundation.h>
#import "CalculatorInterface.h"
@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(void)clear
{
    accumulator = 0;
}
-(void) add:(double)value
{
    accumulator += value;
}
-(void) subtract:(double)value
{
    accumulator -= value;
}
-(void) multiply:(double)value
{
    accumulator *= value;
}
-(BOOL) divide:(double)value
{
    if (value == 0)
    {
        NSLog(@"The divisor can't be 0, pls enter another non-zero one");
        return NO;
    }
    else
    {
        accumulator /= value;
        return YES;
    }
}
-(void) printNotif
{
    NSLog(@"Type in your next expression:");
}
-(void) printRes
{
    NSLog(@"--The result is %lf.", accumulator);
}
@end
