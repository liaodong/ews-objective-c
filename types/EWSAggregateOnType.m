#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAggregateOnType.h"
#import "../types/EWSAggregateType.h"
#import "../types/EWSPathToExtendedFieldType.h"
#import "../types/EWSPathToIndexedFieldType.h"
#import "../types/EWSPathToUnindexedFieldType.h"


@implementation EWSAggregateOnType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAggregateOnType class]];

    [handler property    : @"aggregate"
             isRequired  : TRUE
             withAttrTag : @"Aggregate"
             withHandler : [EWSAggregateType class]];

    [handler property      : @"fieldURI"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FieldURI"
             withHandler   : [EWSPathToUnindexedFieldType class]];

    [handler property      : @"indexedFieldURI"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IndexedFieldURI"
             withHandler   : [EWSPathToIndexedFieldType class]];

    [handler property      : @"extendedFieldURI"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ExtendedFieldURI"
             withHandler   : [EWSPathToExtendedFieldType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAggregateOnType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AggregateOnType: Aggregate=%@ FieldURI=%@ IndexedFieldURI=%@ ExtendedFieldURI=%@", _aggregate, _fieldURI, _indexedFieldURI, _extendedFieldURI];
}

@end

