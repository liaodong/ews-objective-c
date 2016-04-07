#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderChangeType.h"
#import "../types/MPSEWSDistinguishedFolderIdType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType.h"


@implementation MPSEWSFolderChangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderChangeType class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"distinguishedFolderId"
             withNamespace : 't'
             withXmlTag    : @"DistinguishedFolderId"
             withHandler   : [MPSEWSDistinguishedFolderIdType class]];

    [handler property      : @"updates"
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFolderChangeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val folderId] && ![MPSEWSFolderIdType isValid:[val folderId] forVersion:ver]) return FALSE;
    if ([val distinguishedFolderId] && ![MPSEWSDistinguishedFolderIdType isValid:[val distinguishedFolderId] forVersion:ver]) return FALSE;
    if ([val updates] && ![MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType isValid:[val updates] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderChangeType: FolderId=%@ DistinguishedFolderId=%@ Updates=%@", _folderId, _distinguishedFolderId, _updates];
}

@end

