#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfMailboxData.h"
#import "../types/MPSEWSMailboxData.h"


@implementation MPSEWSArrayOfMailboxData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfMailboxData class]];

    [handler listProperty  : @"mailboxData"
             useSelector   : @"addMailboxData"
             withNamespace : 't'
             withXmlTag    : @"MailboxData"
             withHandler   : [MPSEWSMailboxData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfMailboxData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfMailboxData: MailboxData=%@", _mailboxData];
}

- (void) addMailboxData:(MPSEWSMailboxData*) elem
{
    if (![self mailboxData]) {
        [self setMailboxData:[[NSMutableArray<MPSEWSMailboxData*> alloc] init]];
    }
    [_mailboxData addObject:elem];
}

@end

