#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSingleRecipientType.h"
#import "../types/EWSEmailAddressType.h"


@implementation EWSSingleRecipientType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSingleRecipientType class]];

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
    return [EWSSingleRecipientType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SingleRecipientType: Mailbox=%@", _mailbox];
}

@end

