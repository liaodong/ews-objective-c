#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetMessageTrackingReportResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfArraysOfTrackingPropertiesType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSMessageTrackingReportType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetMessageTrackingReportResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetMessageTrackingReportResponseMessageType class]];

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

    [handler property      : @"messageTrackingReport"
             withNamespace : 'm'
             withXmlTag    : @"MessageTrackingReport"
             withHandler   : [MPSEWSMessageTrackingReportType class]];

    [handler property      : @"diagnostics"
             withNamespace : 'm'
             withXmlTag    : @"Diagnostics"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"errors"
             withNamespace : 'm'
             withXmlTag    : @"Errors"
             withHandler   : [MPSEWSArrayOfArraysOfTrackingPropertiesType class]];

    [handler property      : @"properties"
             withNamespace : 'm'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetMessageTrackingReportResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val messageTrackingReport] && ![MPSEWSMessageTrackingReportType isValid:[val messageTrackingReport]]) return FALSE;
    if ([val diagnostics] && ![MPSEWSArrayOfStringsType isValid:[val diagnostics]]) return FALSE;
    if ([val errors] && ![MPSEWSArrayOfArraysOfTrackingPropertiesType isValid:[val errors]]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetMessageTrackingReportResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetMessageTrackingReportResponseMessageType: MessageTrackingReport=%@ Diagnostics=%@ Errors=%@ Properties=%@ super=%@", _messageTrackingReport, _diagnostics, _errors, _properties, [super description]];
}

@end

