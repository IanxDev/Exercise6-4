@interface Calculator: NSObject
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(BOOL) divide:(double) value;
-(void) printNotif;
-(void) printRes;
@end
