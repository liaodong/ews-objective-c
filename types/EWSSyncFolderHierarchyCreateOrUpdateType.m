#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSSyncFolderHierarchyCreateOrUpdateType.h"


@implementation EWSSyncFolderHierarchyCreateOrUpdateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderHierarchyCreateOrUpdateType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderHierarchyCreateOrUpdateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyCreateOrUpdateType:"];
}

@end

