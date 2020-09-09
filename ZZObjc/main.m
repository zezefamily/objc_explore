//
//  main.m
//  ZZObjc
//
//  Created by 泽泽 on 2020/9/7.
//

struct Test {
    int a;
    float b;
    char c;
    short d;
}Test;

struct TestStruct {
    double b;
    
    struct Test test;

}TestStruct;


#import <Foundation/Foundation.h>
#import "ZZPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //alloc->_objc_rootAlloc->callAlloc->_objc_rootAllocWithZone->_class_createInstanceFromZone
//        ZZPerson *person = [ZZPerson alloc];
//        person.name = @"zeze";
//        person.nickName = @"zezefamily";
//        person.hobby = 10086;
//        NSLog(@"zezefamily");
    }
    return 0;
}
