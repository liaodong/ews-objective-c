#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCopyItemType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSCopyItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCopyItemType class]];

    [handler property      : @"toFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCopyItemType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCopyItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CopyItemType: super=%@", [super description]];
}

@end

