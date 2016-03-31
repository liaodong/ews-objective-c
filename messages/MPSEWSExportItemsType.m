#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExportItemsType.h"
#import "../types/MPSEWSNonEmptyArrayOfItemIdsType.h"


@implementation MPSEWSExportItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExportItemsType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfItemIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExportItemsType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val itemIds] && ![MPSEWSNonEmptyArrayOfItemIdsType isValid:[val itemIds]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExportItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExportItemsType: ItemIds=%@ super=%@", _itemIds, [super description]];
}

@end

