#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEmailAddressType.h"


@implementation EWSEmailAddressType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEmailAddressType class]];

    [handler property   : @"name"
             isRequired : FALSE
             withXmlTag : @"Name"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"emailAddress"
             isRequired : FALSE
             withXmlTag : @"EmailAddress"
             withHandler: [EWSNonEmptyStringType class]];

    [handler property   : @"routingType"
             isRequired : FALSE
             withXmlTag : @"RoutingType"
             withHandler: [EWSNonEmptyStringType class]];

    [handler property   : @"mailboxType"
             isRequired : FALSE
             withXmlTag : @"MailboxType"
             withHandler: [EWSMailboxTypeType class]];

    [handler property   : @"itemId"
             isRequired : FALSE
             withXmlTag : @"ItemId"
             withHandler: [EWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEmailAddressType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressType: Name=%@ EmailAddress=%@ RoutingType=%@ MailboxType=%@ ItemId=%@ super=%@", _name, _emailAddress, _routingType, _mailboxType, _itemId, [super description]];
}

@end

