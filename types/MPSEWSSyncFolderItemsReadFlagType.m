#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsReadFlagType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSSyncFolderItemsReadFlagType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsReadFlagType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"isRead"
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderItemsReadFlagType*) val
{   (void) val;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId]]) return FALSE;
    if ([val isRead] && ![MPSEWSBooleanTypeHandler isValid:[val isRead]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsReadFlagType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsReadFlagType: ItemId=%@ IsRead=%@", _itemId, _isRead];
}

@end

