#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMoveItemType.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/EWSTargetFolderIdType.h"


@implementation EWSMoveItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMoveItemType class]];

    [handler property      : @"toFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [EWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMoveItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveItemType: super=%@", [super description]];
}

@end

