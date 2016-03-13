#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderHierarchyDeleteType.h"


@implementation EWSSyncFolderHierarchyDeleteType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderHierarchyDeleteType class]];

    [handler property      : @"folderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSyncFolderHierarchyDeleteType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyDeleteType: FolderId=%@", _folderId];
}

@end

