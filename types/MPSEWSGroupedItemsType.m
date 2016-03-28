#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGroupedItemsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfRealItemsType.h"


@implementation MPSEWSGroupedItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGroupedItemsType class]];

    [handler property      : @"groupIndex"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"GroupIndex"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"items"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSArrayOfRealItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGroupedItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupedItemsType: GroupIndex=%@ Items=%@", _groupIndex, _items];
}

@end

