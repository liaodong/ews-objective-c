#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfBaseItemIdsType.h"
#import "../types/EWSItemIdType.h"


@implementation EWSArrayOfBaseItemIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfBaseItemIdsType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfBaseItemIdsType: ItemId=%@", _itemId];
}

@end

