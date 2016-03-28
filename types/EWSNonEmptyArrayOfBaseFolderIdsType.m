#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSDistinguishedFolderIdType.h"
#import "../types/EWSFolderIdType.h"


@implementation EWSNonEmptyArrayOfBaseFolderIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfBaseFolderIdsType class]];

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
    return [EWSNonEmptyArrayOfBaseFolderIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfBaseFolderIdsType: FolderId=%@ DistinguishedFolderId=%@", _folderId, _distinguishedFolderId];
}

@end

