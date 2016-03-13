
#import "EWSNonEmptyArrayOfFieldOrdersType.h"


@implementation EWSNonEmptyArrayOfFieldOrdersType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfFieldOrdersType alloc] initWithClass:[EWSNonEmptyArrayOfFieldOrdersType class]];

    [handler elementName   : @"FieldOrder"
             withNamespace : 't'             withHandler   : [EWSFieldOrderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

