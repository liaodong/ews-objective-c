#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTargetFolderIdType.h"
#import "../types/MPSEWSDistinguishedFolderIdType.h"
#import "../types/MPSEWSFolderIdType.h"


@implementation MPSEWSTargetFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTargetFolderIdType class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"distinguishedFolderId"
             withNamespace : 't'
             withXmlTag    : @"DistinguishedFolderId"
             withHandler   : [MPSEWSDistinguishedFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTargetFolderIdType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTargetFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TargetFolderIdType: FolderId=%@ DistinguishedFolderId=%@", _folderId, _distinguishedFolderId];
}

@end

