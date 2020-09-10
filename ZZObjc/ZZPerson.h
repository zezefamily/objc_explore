//
//  ZZPerson.h
//  ZZObjc
//
//  Created by 泽泽 on 2020/9/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZZPerson : NSObject
//8 + 8 + 8 + 4 = 28（字节对齐为32）
// isa 8
@property (nonatomic,strong) NSString *name;     // zeze 8
@property (nonatomic,strong) NSString *nickName; // zezefamily 8
@property (nonatomic) int hobby; // 10000 4

- (void)tenToTwo:(int)num;
- (void)twoToTen:(NSString *)num;
@end

NS_ASSUME_NONNULL_END
