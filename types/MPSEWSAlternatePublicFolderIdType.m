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
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property    : @"folderId"
             isRequired  : TRUE
             withAttrTag : @"FolderId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
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

