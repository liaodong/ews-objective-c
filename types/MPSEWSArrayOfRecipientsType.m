#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRecipientsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSArrayOfRecipientsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRecipientsType class]];

    [handler listProperty  : @"mailbox"
             useSelector   : @"addMailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRecipientsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val mailbox]) {
        for (MPSEWSEmailAddressType* obj in [val mailbox]) {
            if (![MPSEWSEmailAddressType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
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

