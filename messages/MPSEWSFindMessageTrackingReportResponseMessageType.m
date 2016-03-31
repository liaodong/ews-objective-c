#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindMessageTrackingReportResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfArraysOfTrackingPropertiesType.h"
#import "../types/MPSEWSArrayOfFindMessageTrackingSearchResultType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSFindMessageTrackingReportResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindMessageTrackingReportResponseMessageType class]];

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

    [handler property      : @"diagnostics"
             withNamespace : 'm'
             withXmlTag    : @"Diagnostics"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"messageTrackingSearchResults"
             withNamespace : 'm'
             withXmlTag    : @"MessageTrackingSearchResults"
             withHandler   : [MPSEWSArrayOfFindMessageTrackingSearchResultType class]];

    [handler property      : @"executedSearchScope"
             withNamespace : 'm'
             withXmlTag    : @"ExecutedSearchScope"
             withHandler   : [MPSEWSStringTypeHandler class]];

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

+ (BOOL) isValid:(MPSEWSFindMessageTrackingReportResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val diagnostics] && ![MPSEWSArrayOfStringsType isValid:[val diagnostics]]) return FALSE;
    if ([val messageTrackingSearchResults] && ![MPSEWSArrayOfFindMessageTrackingSearchResultType isValid:[val messageTrackingSearchResults]]) return FALSE;
    if ([val executedSearchScope] && ![MPSEWSStringTypeHandler isValid:[val executedSearchScope]]) return FALSE;
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
    return [MPSEWSFindMessageTrackingReportResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindMessageTrackingReportResponseMessageType: Diagnostics=%@ MessageTrackingSearchResults=%@ ExecutedSearchScope=%@ Errors=%@ Properties=%@ super=%@", _diagnostics, _messageTrackingSearchResults, _executedSearchScope, _errors, _properties, [super description]];
}

@end

