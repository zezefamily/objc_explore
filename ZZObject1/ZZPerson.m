//
//  ZZPerson.m
//  ZZObjc
//
//  Created by 泽泽 on 2020/9/7.
//

#import "ZZPerson.h"

@implementation ZZPerson

- (void)tenToTwo:(int)num
{
    static NSString *str;
    if(!str){
        str = [NSString new];
    }
    int result = num/2;
    int mod = num % 2;
    str = [str stringByAppendingString:[NSString stringWithFormat:@"%d",mod]];
//    printf("\n%d",mod);
    if(result == 0){
        NSLog(@"str == %@",str);
        str = nil;
        return;
    }
    [self tenToTwo:result];
}

- (void)twoToTen:(NSString *)num
{
    NSUInteger power = num.length - 1;
    int sum = 0;
    for(NSUInteger i = 0;i<num.length;i++){
        unichar aChar = [num characterAtIndex:i];
        int n = [NSString stringWithCharacters:&aChar length:1].intValue;
        sum = sum + (n * pow(2, power));
        power-=1;
    }
    NSLog(@"sum == %d",sum);
}


@end
