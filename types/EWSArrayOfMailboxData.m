
#import "EWSArrayOfMailboxData.h"


@implementation EWSArrayOfMailboxData 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfMailboxData alloc] initWithClass:[EWSArrayOfMailboxData class]];

    [handler elementName : @"MailboxData"
             withHandler : [EWSMailboxData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

