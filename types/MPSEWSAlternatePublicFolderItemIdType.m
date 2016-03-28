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
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property    : @"folderId"
             isRequired  : TRUE
             withAttrTag : @"FolderId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"itemId"
             isRequired  : TRUE
             withAttrTag : @"ItemId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
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

