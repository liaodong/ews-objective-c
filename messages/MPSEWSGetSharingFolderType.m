#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetSharingFolderType.h"
#import "../types/MPSEWSNonEmptyStringType.h"
#import "../types/MPSEWSSharingDataType.h"


@implementation MPSEWSGetSharingFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetSharingFolderType class]];

    [handler property      : @"smtpAddress"
             withNamespace : 'm'
             withXmlTag    : @"SmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"dataType"
             withNamespace : 'm'
             withXmlTag    : @"DataType"
             withHandler   : [MPSEWSSharingDataType class]];

    [handler property      : @"sharedFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SharedFolderId"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetSharingFolderType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val smtpAddress] && ![MPSEWSNonEmptyStringType isValid:[val smtpAddress]]) return FALSE;
    if ([val dataType] && ![MPSEWSSharingDataType isValid:[val dataType]]) return FALSE;
    if ([val sharedFolderId] && ![MPSEWSNonEmptyStringType isValid:[val sharedFolderId]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetSharingFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetSharingFolderType: SmtpAddress=%@ DataType=%@ SharedFolderId=%@ super=%@", _smtpAddress, _dataType, _sharedFolderId, [super description]];
}

@end

