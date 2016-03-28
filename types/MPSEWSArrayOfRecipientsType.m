#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRecipientsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSArrayOfRecipientsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRecipientsType class]];

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
    return [MPSEWSArrayOfRecipientsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRecipientsType: Mailbox=%@", _mailbox];
}

@end

