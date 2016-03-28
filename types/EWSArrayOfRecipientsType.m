#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfRecipientsType.h"
#import "../types/EWSEmailAddressType.h"


@implementation EWSArrayOfRecipientsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfRecipientsType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfRecipientsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRecipientsType: Mailbox=%@", _mailbox];
}

@end

