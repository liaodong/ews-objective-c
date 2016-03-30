#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderHierarchyDeleteType.h"
#import "../types/MPSEWSFolderIdType.h"


@implementation MPSEWSSyncFolderHierarchyDeleteType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderHierarchyDeleteType class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyDeleteType*) val
{   (void) val;
    if ([val folderId] && ![MPSEWSFolderIdType isValid:[val folderId]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderHierarchyDeleteType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyDeleteType: FolderId=%@", _folderId];
}

@end

