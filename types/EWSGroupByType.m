#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGroupByType.h"


@implementation EWSGroupByType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGroupByType class]];

    [handler property    : @"order"
             isRequired  : TRUE
             withAttrTag : @"Order"
             withHandler : [EWSSortDirectionType class]];

    [handler property      : @"aggregateOn"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AggregateOn"
             withHandler   : [EWSAggregateOnType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupByType: AggregateOn=%@ super=%@", _aggregateOn, [super description]];
}

@end

