#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMoveItemType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSMoveItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMoveItemType class]];

    [handler property      : @"toFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"returnNewItemIds"
             withNamespace : 'm'
             withXmlTag    : @"ReturnNewItemIds"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMoveItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseMoveCopyItemType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMoveItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveItemType: super=%@", [super description]];
}

@end

