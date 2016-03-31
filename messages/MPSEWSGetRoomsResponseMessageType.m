#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetRoomsResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfRoomsType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetRoomsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetRoomsResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"rooms"
             withNamespace : 'm'
             withXmlTag    : @"Rooms"
             withHandler   : [MPSEWSArrayOfRoomsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetRoomsResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val rooms] && ![MPSEWSArrayOfRoomsType isValid:[val rooms]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetRoomsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetRoomsResponseMessageType: Rooms=%@ super=%@", _rooms, [super description]];
}

@end

