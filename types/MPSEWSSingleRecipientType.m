#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSingleRecipientType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSSingleRecipientType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSingleRecipientType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
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
    return [MPSEWSSingleRecipientType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SingleRecipientType: Mailbox=%@", _mailbox];
}

@end

