#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEmailAddressType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSMailboxTypeType.h"
#import "../types/EWSNonEmptyStringType.h"


@implementation EWSEmailAddressType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEmailAddressType class]];

    [handler property      : @"name"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"emailAddress"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EmailAddress"
             withHandler   : [EWSNonEmptyStringType class]];

    [handler property      : @"routingType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RoutingType"
             withHandler   : [EWSNonEmptyStringType class]];

    [handler property      : @"mailboxType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MailboxType"
             withHandler   : [EWSMailboxTypeType class]];

    [handler property      : @"itemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

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

