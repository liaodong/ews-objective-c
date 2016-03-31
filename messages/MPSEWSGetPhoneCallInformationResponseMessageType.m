#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetPhoneCallInformationResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSPhoneCallInformationType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetPhoneCallInformationResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetPhoneCallInformationResponseMessageType class]];

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

    [handler property      : @"phoneCallInformation"
             withNamespace : 'm'
             withXmlTag    : @"PhoneCallInformation"
             withHandler   : [MPSEWSPhoneCallInformationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetPhoneCallInformationResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val phoneCallInformation] && ![MPSEWSPhoneCallInformationType isValid:[val phoneCallInformation]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetPhoneCallInformationResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetPhoneCallInformationResponseMessageType: PhoneCallInformation=%@ super=%@", _phoneCallInformation, [super description]];
}

@end

