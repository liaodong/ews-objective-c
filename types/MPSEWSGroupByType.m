#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupByType.h"
#import "../types/MPSEWSAggregateOnType.h"
#import "../types/MPSEWSSortDirectionType.h"


@implementation MPSEWSGroupByType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupByType class]];

    [handler property    : @"order"
             isRequired  : TRUE
             withAttrTag : @"Order"
             withHandler : [MPSEWSSortDirectionType class]];

    [handler property      : @"aggregateOn"
             isRequired    : TRUE
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
    return [NSString stringWithFormat:@"GroupByType: AggregateOn=%@ super=%@", _aggregateOn, [super description]];
}

@end

