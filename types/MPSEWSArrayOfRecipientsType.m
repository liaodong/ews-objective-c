#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRecipientsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSArrayOfRecipientsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRecipientsType class]];

    [handler listProperty  : @"mailbox"
             isNonEmpty    : TRUE
             useSelector   : @"addMailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfRecipientsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRecipientsType: Mailbox=%@", _mailbox];
}

- (void) addMailbox:(MPSEWSEmailAddressType*) elem
{
    if (![self mailbox]) {
        [self setMailbox:[[NSMutableArray<MPSEWSEmailAddressType*> alloc] init]];
    }
    [_mailbox addObject:elem];
}

@end
