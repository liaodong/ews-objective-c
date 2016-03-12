
#import "EWSArrayOfStringsType.h"


@implementation EWSArrayOfStringsType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfStringsType alloc] initWithClass:[EWSArrayOfStringsType class]];

    [handler elementName : @"String"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

