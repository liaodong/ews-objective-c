#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTargetFolderIdType.h"
#import "../types/EWSDistinguishedFolderIdType.h"
#import "../types/EWSFolderIdType.h"


@implementation EWSTargetFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTargetFolderIdType class]];

    [handler property      : @"folderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"distinguishedFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DistinguishedFolderId"
             withHandler   : [EWSDistinguishedFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTargetFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TargetFolderIdType: FolderId=%@ DistinguishedFolderId=%@", _folderId, _distinguishedFolderId];
}

@end

