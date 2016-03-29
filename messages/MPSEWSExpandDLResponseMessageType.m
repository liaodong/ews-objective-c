#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExpandDLResponseMessageType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfDLExpansionType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSExpandDLResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExpandDLResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property    : @"indexedPagingOffset"
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             withAttrTag : @"NumeratorOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             withAttrTag : @"TotalItemsInView"
             withHandler : [MPSEWSIntegerTypeHandler class]];

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

    [handler property      : @"dLExpansion"
             withNamespace : 'm'
             withXmlTag    : @"DLExpansion"
             withHandler   : [MPSEWSArrayOfDLExpansionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExpandDLResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExpandDLResponseMessageType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ DLExpansion=%@ super=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _dLExpansion, [super description]];
}

@end

