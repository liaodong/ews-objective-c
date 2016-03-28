#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderHierarchyChangesType.h"


@implementation MPSEWSSyncFolderHierarchyChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderHierarchyChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderHierarchyChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyChangesType:"];
}

@end

