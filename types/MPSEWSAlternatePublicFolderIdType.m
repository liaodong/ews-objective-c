#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAlternatePublicFolderIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSIdFormatType.h"


@implementation MPSEWSAlternatePublicFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAlternatePublicFolderIdType class]];

    [handler property    : @"format"
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property    : @"folderId"
             withAttrTag : @"FolderId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAlternatePublicFolderIdType*) val
{   (void) val;
    if (![MPSEWSAlternateIdBaseType isValid:val]) return FALSE;
    if ([val folderId] && ![MPSEWSStringTypeHandler isValid:[val folderId]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAlternatePublicFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternatePublicFolderIdType: FolderId=%@ super=%@", _folderId, [super description]];
}

@end

