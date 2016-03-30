#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAggregateOnType.h"
#import "../types/MPSEWSAggregateType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"
#import "../types/MPSEWSPathToIndexedFieldType.h"
#import "../types/MPSEWSPathToUnindexedFieldType.h"


@implementation MPSEWSAggregateOnType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAggregateOnType class]];

    [handler property    : @"aggregate"
             withAttrTag : @"Aggregate"
             withHandler : [MPSEWSAggregateType class]];

    [handler property      : @"fieldURI"
             withNamespace : 't'
             withXmlTag    : @"FieldURI"
             withHandler   : [MPSEWSPathToUnindexedFieldType class]];

    [handler property      : @"indexedFieldURI"
             withNamespace : 't'
             withXmlTag    : @"IndexedFieldURI"
             withHandler   : [MPSEWSPathToIndexedFieldType class]];

    [handler property      : @"extendedFieldURI"
             withNamespace : 't'
             withXmlTag    : @"ExtendedFieldURI"
             withHandler   : [MPSEWSPathToExtendedFieldType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAggregateOnType*) val
{   (void) val;
    if ([val aggregate] && ![MPSEWSAggregateType isValid:[val aggregate]]) return FALSE;
    if ([val fieldURI] && ![MPSEWSPathToUnindexedFieldType isValid:[val fieldURI]]) return FALSE;
    if ([val indexedFieldURI] && ![MPSEWSPathToIndexedFieldType isValid:[val indexedFieldURI]]) return FALSE;
    if ([val extendedFieldURI] && ![MPSEWSPathToExtendedFieldType isValid:[val extendedFieldURI]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAggregateOnType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AggregateOnType: Aggregate=%@ FieldURI=%@ IndexedFieldURI=%@ ExtendedFieldURI=%@", _aggregate, _fieldURI, _indexedFieldURI, _extendedFieldURI];
}

@end

