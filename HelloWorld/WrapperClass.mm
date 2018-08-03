
#import <Foundation/Foundation.h>

#import "WrapperClass.h"

#include "WrapperClass.h"
#include "PureCplusplusClass.h"

using namespace test;

@interface WrapperClass ()
@property (nonatomic) HelloTest helloTest;
@end

@implementation WrapperClass

- (NSString *)getHelloString {
    self.helloTest = *(new HelloTest);
    std::string str = self.helloTest.getHelloString();
    NSString* result = [[NSString alloc] initWithUTF8String:str.c_str()];
    return result;
}

@end
