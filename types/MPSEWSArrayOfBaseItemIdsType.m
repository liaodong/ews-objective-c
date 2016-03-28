#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSArrayOfBaseItemIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfBaseItemIdsType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfBaseItemIdsType: ItemId=%@", _itemId];
}

@end

