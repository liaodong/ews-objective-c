
#import "EWSNonEmptyArrayOfPropertyValuesType.h"


@implementation EWSNonEmptyArrayOfPropertyValuesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfPropertyValuesType alloc] initWithClass:[EWSNonEmptyArrayOfPropertyValuesType class]];

    [handler elementName : @"Value"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

