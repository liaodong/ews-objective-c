#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGroupedItemsType.h"


@implementation EWSGroupedItemsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGroupedItemsType class]];

    [handler property      : @"groupIndex"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"GroupIndex"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"items"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Items"
             withHandler   : [EWSArrayOfRealItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGroupedItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GroupedItemsType: GroupIndex=%@ Items=%@", _groupIndex, _items];
}

@end

