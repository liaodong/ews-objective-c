#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAlternatePublicFolderItemIdType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSIdFormatType.h"


@implementation EWSAlternatePublicFolderItemIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAlternatePublicFolderItemIdType class]];

    [handler property    : @"format"
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [EWSIdFormatType class]];

    [handler property    : @"folderId"
             isRequired  : TRUE
             withAttrTag : @"FolderId"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"itemId"
             isRequired  : TRUE
             withAttrTag : @"ItemId"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAlternatePublicFolderItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternatePublicFolderItemIdType: ItemId=%@ super=%@", _itemId, [super description]];
}

@end

