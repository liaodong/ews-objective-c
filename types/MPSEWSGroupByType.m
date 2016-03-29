#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupByType.h"
#import "../types/MPSEWSAggregateOnType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"
#import "../types/MPSEWSPathToIndexedFieldType.h"
#import "../types/MPSEWSPathToUnindexedFieldType.h"
#import "../types/MPSEWSSortDirectionType.h"


@implementation MPSEWSGroupByType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupByType class]];

    [handler property    : @"order"
             withAttrTag : @"Order"
             withHandler : [MPSEWSSortDirectionType class]];

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

    [handler property      : @"aggregateOn"
             withNamespace : 't'
             withXmlTag    : @"AggregateOn"
             withHandler   : [MPSEWSAggregateOnType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupByType: FieldURI=%@ IndexedFieldURI=%@ ExtendedFieldURI=%@ AggregateOn=%@ super=%@", _fieldURI, _indexedFieldURI, _extendedFieldURI, _aggregateOn, [super description]];
}

@end

