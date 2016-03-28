#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSDistinguishedFolderIdType.h"
#import "../types/MPSEWSFolderIdType.h"


@implementation MPSEWSNonEmptyArrayOfBaseFolderIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"folderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"distinguishedFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DistinguishedFolderId"
             withHandler   : [MPSEWSDistinguishedFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfBaseFolderIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfBaseFolderIdsType: FolderId=%@ DistinguishedFolderId=%@", _folderId, _distinguishedFolderId];
}

@end

