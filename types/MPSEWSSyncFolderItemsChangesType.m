#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsChangesType.h"


@implementation MPSEWSSyncFolderItemsChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsChangesType:"];
}

@end

