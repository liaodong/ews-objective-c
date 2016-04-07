#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSingleRecipientType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSSingleRecipientType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSingleRecipientType class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSingleRecipientType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val mailbox] && ![MPSEWSEmailAddressType isValid:[val mailbox] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSingleRecipientType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SingleRecipientType: Mailbox=%@", _mailbox];
}

@end

