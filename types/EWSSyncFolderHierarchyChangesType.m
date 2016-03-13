#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSSyncFolderHierarchyChangesType.h"


@implementation EWSSyncFolderHierarchyChangesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderHierarchyChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderHierarchyChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyChangesType:"];
}

@end

