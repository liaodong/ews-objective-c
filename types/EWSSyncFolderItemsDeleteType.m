#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSSyncFolderItemsDeleteType.h"


@implementation EWSSyncFolderItemsDeleteType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsDeleteType class]];

    [handler property   : @"itemId"
             isRequired : TRUE
             withXmlTag : @"ItemId"
             withHandler: [EWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderItemsDeleteType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsDeleteType: ItemId=%@", _itemId];
}

@end

