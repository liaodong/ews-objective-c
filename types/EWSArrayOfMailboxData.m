#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfMailboxData.h"
#import "../types/EWSMailboxData.h"


@implementation EWSArrayOfMailboxData 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfMailboxData class]];

    [handler listProperty  : @"mailboxData"
             isNonEmpty    : FALSE
             useSelector   : @"addMailboxData"
             withNamespace : 't'
             withXmlTag    : @"MailboxData"
             withHandler   : [EWSMailboxData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfMailboxData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfMailboxData: MailboxData=%@", _mailboxData];
}

- (void) addMailboxData:(EWSMailboxData*) elem
{
    if (![self mailboxData]) {
        [self setMailboxData:[[NSMutableArray<EWSMailboxData*> alloc] init]];
    }
    [_mailboxData addObject:elem];
}

@end

