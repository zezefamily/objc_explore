//
//  main.m
//  ZZObject1
//
//  Created by 泽泽 on 2020/9/14.
//

#import <Foundation/Foundation.h>

//
//  main.m
//  ZZObjc
//
//  Created by 泽泽 on 2020/9/7.
//
/// 字节对齐
struct Test {
    int a;    //4  0 1 2 3
    float b;  //4  4 5 6 7
    char c;   //1  8
    short d;  //2  9 10 11
    double f; //8  12 13 14 15 |16 17 18 19 20 21 22 23
}Test; //24
 
struct TestStruct {
    double a;       // 8  0 1 2 3 4 5 6 7
    float b;        // 4  8 9 10 11
    struct Test c;  //最大成员是f(8字节) 8 12 13 14 15 | 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
                                                    // 31 32 33 34 35 36 37 38 39
    char d;        // 1 40
    char e;        // 1 41
    double f;      // 8 42 43 44 45 46 47 |48 49 50 51 52 53 54 55
}TestStruct;
//总结：当结构体中包含【结构体成员】或【数组】的，取元素中最大元素大小的整数倍开始存储


#import <Foundation/Foundation.h>
#import "ZZPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        
    }
    return 0;
}



void toDoTest1(){
    // alloc->_objc_rootAlloc->callAlloc->_objc_rootAllocWithZone->_class_createInstanceFromZone
    ZZPerson *person = [ZZPerson alloc];
    person.name = @"zeze";
    person.nickName = @"zezefamily";
    person.hobby = 10086;
    NSLog(@"zezefamily");
    NSLog(@"sizeof(Test) == %lu",sizeof(Test));
    NSLog(@"sizeof(TestStruct) == %lu",sizeof(TestStruct));
    [person tenToTwo:30];
    [person twoToTen:@"1011010"];
}

void toDoTest0() {
    //联合体
    union {
        uint8_t value;
        // 位域
        struct {
            uint8_t bit0:2;
            uint8_t bit1:3;
            uint8_t bit2:3;
        }byte;
    }data1,data2;
    
    data1.value = 20;
    
    data2.byte.bit0 = 3;
    data2.byte.bit1 = 3;
    data2.byte.bit2 = 0;
    
    printf("bit0 = %d\r\n",data1.byte.bit0);
    printf("bit1 = %d\r\n",data1.byte.bit1);
    printf("bit2 = %d\r\n",data1.byte.bit2);
    
    printf("data1.value = %d\r\n",data1.value);
    printf("data2.value = %d\r\n",data2.value);
}

/*
 
 git init
 git add README.md
 git commit -m "first commit"
 git branch -M master
 git remote add origin https://github.com/zezefamily/openCV_explore.git
 git push -u origin master
 */



