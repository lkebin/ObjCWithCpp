
#import "CplusplusMMClass.h"

@implementation CplusplusMMClass

- (NSString*)fetchStringFromCplusplus {
    self.wrapper = [[WrapperClass alloc] init];
    NSString * result = [self.wrapper getHelloString];
    return result;
}

@end
