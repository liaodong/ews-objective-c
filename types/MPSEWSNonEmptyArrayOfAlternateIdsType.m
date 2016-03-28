#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAlternateIdsType.h"
#import "../types/MPSEWSAlternateIdType.h"
#import "../types/MPSEWSAlternatePublicFolderIdType.h"
#import "../types/MPSEWSAlternatePublicFolderItemIdType.h"


@implementation MPSEWSNonEmptyArrayOfAlternateIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAlternateIdsType class]];

    [handler property      : @"alternateId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternateId"
             withHandler   : [MPSEWSAlternateIdType class]];

    [handler property      : @"alternatePublicFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderId"
             withHandler   : [MPSEWSAlternatePublicFolderIdType class]];

    [handler property      : @"alternatePublicFolderItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderItemId"
             withHandler   : [MPSEWSAlternatePublicFolderItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfAlternateIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAlternateIdsType: AlternateId=%@ AlternatePublicFolderId=%@ AlternatePublicFolderItemId=%@", _alternateId, _alternatePublicFolderId, _alternatePublicFolderItemId];
}

@end

