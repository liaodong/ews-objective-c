#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfAlternateIdsType.h"
#import "../types/EWSAlternateIdType.h"
#import "../types/EWSAlternatePublicFolderIdType.h"
#import "../types/EWSAlternatePublicFolderItemIdType.h"


@implementation EWSNonEmptyArrayOfAlternateIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfAlternateIdsType class]];

    [handler property      : @"alternateId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternateId"
             withHandler   : [EWSAlternateIdType class]];

    [handler property      : @"alternatePublicFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderId"
             withHandler   : [EWSAlternatePublicFolderIdType class]];

    [handler property      : @"alternatePublicFolderItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderItemId"
             withHandler   : [EWSAlternatePublicFolderItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfAlternateIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAlternateIdsType: AlternateId=%@ AlternatePublicFolderId=%@ AlternatePublicFolderItemId=%@", _alternateId, _alternatePublicFolderId, _alternatePublicFolderItemId];
}

@end

