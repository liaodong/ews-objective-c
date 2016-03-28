#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderItemsReadFlagType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSItemIdType.h"


@implementation EWSSyncFolderItemsReadFlagType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsReadFlagType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"isRead"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderItemsReadFlagType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsReadFlagType: ItemId=%@ IsRead=%@", _itemId, _isRead];
}

@end

