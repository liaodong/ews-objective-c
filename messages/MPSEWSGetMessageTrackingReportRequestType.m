#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetMessageTrackingReportRequestType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSMessageTrackingReportTemplateType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSGetMessageTrackingReportRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetMessageTrackingReportRequestType class]];

    [handler property      : @"scope"
             withNamespace : 'm'
             withXmlTag    : @"Scope"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"reportTemplate"
             withNamespace : 'm'
             withXmlTag    : @"ReportTemplate"
             withHandler   : [MPSEWSMessageTrackingReportTemplateType class]];

    [handler property      : @"recipientFilter"
             withNamespace : 'm'
             withXmlTag    : @"RecipientFilter"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"messageTrackingReportId"
             withNamespace : 'm'
             withXmlTag    : @"MessageTrackingReportId"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"returnQueueEvents"
             withNamespace : 'm'
             withXmlTag    : @"ReturnQueueEvents"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"diagnosticsLevel"
             withNamespace : 'm'
             withXmlTag    : @"DiagnosticsLevel"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"properties"
             withNamespace : 'm'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetMessageTrackingReportRequestType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val scope] && ![MPSEWSNonEmptyStringType isValid:[val scope] forVersion:ver]) return FALSE;
    if ([val reportTemplate] && ![MPSEWSMessageTrackingReportTemplateType isValid:[val reportTemplate] forVersion:ver]) return FALSE;
    if ([val recipientFilter] && ![MPSEWSEmailAddressType isValid:[val recipientFilter] forVersion:ver]) return FALSE;
    if ([val messageTrackingReportId] && ![MPSEWSNonEmptyStringType isValid:[val messageTrackingReportId] forVersion:ver]) return FALSE;
    if ([val returnQueueEvents] && ![MPSEWSBooleanTypeHandler isValid:[val returnQueueEvents] forVersion:ver]) return FALSE;
    if ([val diagnosticsLevel] && ![MPSEWSStringTypeHandler isValid:[val diagnosticsLevel] forVersion:ver]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetMessageTrackingReportRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetMessageTrackingReportRequestType: Scope=%@ ReportTemplate=%@ RecipientFilter=%@ MessageTrackingReportId=%@ ReturnQueueEvents=%@ DiagnosticsLevel=%@ Properties=%@ super=%@", _scope, _reportTemplate, _recipientFilter, _messageTrackingReportId, _returnQueueEvents, _diagnosticsLevel, _properties, [super description]];
}

@end

