//
//  main.m
//  ZZObjc
//
//  Created by 泽泽 on 2020/9/7.
//

#import <Foundation/Foundation.h>
#import "ZZPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ZZPerson *person = [ZZPerson alloc];
        person.name = @"zeze";
        person.nickName = @"zezefamily";
        person.hobby = 10086;
        NSLog(@"zezefamily");
    }
    return 0;
}
