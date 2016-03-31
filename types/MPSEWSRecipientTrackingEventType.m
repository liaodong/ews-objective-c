#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecipientTrackingEventType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSUnsignedIntTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSRecipientTrackingEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecipientTrackingEventType class]];

    [handler property      : @"date"
             withNamespace : 't'
             withXmlTag    : @"Date"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"recipient"
             withNamespace : 't'
             withXmlTag    : @"Recipient"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"deliveryStatus"
             withNamespace : 't'
             withXmlTag    : @"DeliveryStatus"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"eventDescription"
             withNamespace : 't'
             withXmlTag    : @"EventDescription"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"eventData"
             withNamespace : 't'
             withXmlTag    : @"EventData"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"server"
             withNamespace : 't'
             withXmlTag    : @"Server"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"internalId"
             withNamespace : 't'
             withXmlTag    : @"InternalId"
             withHandler   : [MPSEWSUnsignedIntTypeHandler class]];

    [handler property      : @"bccRecipient"
             withNamespace : 't'
             withXmlTag    : @"BccRecipient"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"hiddenRecipient"
             withNamespace : 't'
             withXmlTag    : @"HiddenRecipient"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"uniquePathId"
             withNamespace : 't'
             withXmlTag    : @"UniquePathId"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"rootAddress"
             withNamespace : 't'
             withXmlTag    : @"RootAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"properties"
             withNamespace : 't'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRecipientTrackingEventType*) val
{   (void) val;
    if ([val date] && ![MPSEWSDateTimeTypeHandler isValid:[val date]]) return FALSE;
    if ([val recipient] && ![MPSEWSEmailAddressType isValid:[val recipient]]) return FALSE;
    if ([val deliveryStatus] && ![MPSEWSStringTypeHandler isValid:[val deliveryStatus]]) return FALSE;
    if ([val eventDescription] && ![MPSEWSStringTypeHandler isValid:[val eventDescription]]) return FALSE;
    if ([val eventData] && ![MPSEWSArrayOfStringsType isValid:[val eventData]]) return FALSE;
    if ([val server] && ![MPSEWSNonEmptyStringType isValid:[val server]]) return FALSE;
    if ([val internalId] && ![MPSEWSUnsignedIntTypeHandler isValid:[val internalId]]) return FALSE;
    if ([val bccRecipient] && ![MPSEWSBooleanTypeHandler isValid:[val bccRecipient]]) return FALSE;
    if ([val hiddenRecipient] && ![MPSEWSBooleanTypeHandler isValid:[val hiddenRecipient]]) return FALSE;
    if ([val uniquePathId] && ![MPSEWSNonEmptyStringType isValid:[val uniquePathId]]) return FALSE;
    if ([val rootAddress] && ![MPSEWSNonEmptyStringType isValid:[val rootAddress]]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecipientTrackingEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecipientTrackingEventType: Date=%@ Recipient=%@ DeliveryStatus=%@ EventDescription=%@ EventData=%@ Server=%@ InternalId=%@ BccRecipient=%@ HiddenRecipient=%@ UniquePathId=%@ RootAddress=%@ Properties=%@", _date, _recipient, _deliveryStatus, _eventDescription, _eventData, _server, _internalId, _bccRecipient, _hiddenRecipient, _uniquePathId, _rootAddress, _properties];
}

@end

