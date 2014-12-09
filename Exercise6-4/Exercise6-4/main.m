#import <Foundation/Foundation.h>
#import "CalculatorInterface.h"
int main (int argc, char *argv[])
{
    @autoreleasepool {
        double operand = 0;
        char operator = 0;
        bool isZero;
        Calculator *instanceCal = [Calculator new];
        NSLog(@"Introdocution: 10 S - to set accumulator with 10; E - to end the program; 10 + or - or etc. - to calculate with your input.");
        NSLog(@"Type in your expression:");
        
        while (scanf(" %lf %c", &operand, &operator) && operator != 'E')
        {
            switch (operator) {
                case 'S':
                    [instanceCal setAccumulator:operand];
                    NSLog(@"Successfully set the accumulator!");
                    [instanceCal printRes];
                    [instanceCal printNotif];
                    break;
                case '+':
                    [instanceCal add:operand];
                    [instanceCal printRes];
                    [instanceCal printNotif];
                    break;
                case '-':
                    [instanceCal subtract:operand];
                    [instanceCal printRes];
                    [instanceCal printNotif];
                    break;
                case '*':
                    [instanceCal multiply:operand];
                    [instanceCal printRes];
                    [instanceCal printNotif];
                    break;
                case '/':
                    isZero = [instanceCal divide:operand];
                    if (isZero == YES)
                        [instanceCal printRes];
                    [instanceCal printNotif];
                    break;
                default:
                    [instanceCal printNotif];
                    break;
            }
            
        }
        NSLog(@"The program is end! Bye.");
    }
    return 0;
}