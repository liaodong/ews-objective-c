#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderItemsChangesType.h"


@implementation EWSSyncFolderItemsChangesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderItemsChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsChangesType:"];
}

@end

