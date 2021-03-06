#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsDeleteType.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSSyncFolderItemsDeleteType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsDeleteType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderItemsDeleteType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsDeleteType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsDeleteType: ItemId=%@", _itemId];
}

@end

