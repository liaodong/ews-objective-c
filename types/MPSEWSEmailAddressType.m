#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmailAddressType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSMailboxTypeType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSEmailAddressType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmailAddressType class]];

    [handler property      : @"name"
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"emailAddress"
             withNamespace : 't'
             withXmlTag    : @"EmailAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"routingType"
             withNamespace : 't'
             withXmlTag    : @"RoutingType"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"mailboxType"
             withNamespace : 't'
             withXmlTag    : @"MailboxType"
             withHandler   : [MPSEWSMailboxTypeType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEmailAddressType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseEmailAddressType isValid:val forVersion:ver]) return FALSE;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion:ver]) return FALSE;
    if ([val emailAddress] && ![MPSEWSNonEmptyStringType isValid:[val emailAddress] forVersion:ver]) return FALSE;
    if ([val routingType] && ![MPSEWSNonEmptyStringType isValid:[val routingType] forVersion:ver]) return FALSE;
    if ([val mailboxType] && ![MPSEWSMailboxTypeType isValid:[val mailboxType] forVersion:ver]) return FALSE;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEmailAddressType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressType: Name=%@ EmailAddress=%@ RoutingType=%@ MailboxType=%@ ItemId=%@ super=%@", _name, _emailAddress, _routingType, _mailboxType, _itemId, [super description]];
}

@end

