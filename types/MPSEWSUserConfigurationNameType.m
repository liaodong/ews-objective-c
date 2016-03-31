#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserConfigurationNameType.h"
#import "../types/MPSEWSDistinguishedFolderIdType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSUserConfigurationNameType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserConfigurationNameType class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSNonEmptyStringType class]];

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

+ (BOOL) isValid:(MPSEWSUserConfigurationNameType*) val
{   (void) val;
    if (![MPSEWSTargetFolderIdType isValid:val]) return FALSE;
    if ([val name] && ![MPSEWSNonEmptyStringType isValid:[val name]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserConfigurationNameType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserConfigurationNameType: Name=%@ super=%@", _name, [super description]];
}

@end

