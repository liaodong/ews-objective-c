#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSResponseMessageType class]];

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
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val responseClass] && ![MPSEWSResponseClassType isValid:[val responseClass] forVersion: ver]) return FALSE;
    if ([val messageText] && ![MPSEWSStringTypeHandler isValid:[val messageText] forVersion:ver]) return FALSE;
    if ([val responseCode] && ![MPSEWSResponseCodeType isValid:[val responseCode] forVersion:ver]) return FALSE;
    if ([val descriptiveLinkKey] && ![MPSEWSIntegerTypeHandler isValid:[val descriptiveLinkKey] forVersion:ver]) return FALSE;
    if ([val messageXml] && ![MPSEWSXmlContentTypeHandler isValid:[val messageXml] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResponseMessageType: ResponseClass=%@ MessageText=%@ ResponseCode=%@ DescriptiveLinkKey=%@ MessageXml=%@", _responseClass, _messageText, _responseCode, _descriptiveLinkKey, _messageXml];
}

@end

