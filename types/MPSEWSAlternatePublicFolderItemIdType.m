#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAlternatePublicFolderItemIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSIdFormatType.h"


@implementation MPSEWSAlternatePublicFolderItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAlternatePublicFolderItemIdType class]];

    [handler property    : @"format"
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property    : @"folderId"
             withAttrTag : @"FolderId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"itemId"
             withAttrTag : @"ItemId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAlternatePublicFolderItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSAlternatePublicFolderIdType isValid:val forVersion:ver]) return FALSE;
    if ([val itemId] && ![MPSEWSStringTypeHandler isValid:[val itemId] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAlternatePublicFolderItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternatePublicFolderItemIdType: ItemId=%@ super=%@", _itemId, [super description]];
}

@end

