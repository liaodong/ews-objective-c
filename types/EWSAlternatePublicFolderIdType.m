#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAlternatePublicFolderIdType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSIdFormatType.h"


@implementation EWSAlternatePublicFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAlternatePublicFolderIdType class]];

    [handler property    : @"format"
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [EWSIdFormatType class]];

    [handler property    : @"folderId"
             isRequired  : TRUE
             withAttrTag : @"FolderId"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAlternatePublicFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternatePublicFolderIdType: FolderId=%@ super=%@", _folderId, [super description]];
}

@end

