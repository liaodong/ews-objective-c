
#import "EWSArrayOfFreeBusyResponse.h"


@implementation EWSArrayOfFreeBusyResponse 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfFreeBusyResponse alloc] initWithClass:[EWSArrayOfFreeBusyResponse class]];

    [handler elementName   : @"FreeBusyResponse"
             withNamespace : 'm'             withHandler   : [EWSFreeBusyResponseType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

