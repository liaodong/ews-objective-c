#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSDistinguishedFolderIdType.h"
#import "../types/MPSEWSFolderIdType.h"


@implementation MPSEWSNonEmptyArrayOfBaseFolderIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler listProperty  : @"folderId"
             useSelector   : @"addFolderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler listProperty  : @"distinguishedFolderId"
             useSelector   : @"addDistinguishedFolderId"
             withNamespace : 't'
             withXmlTag    : @"DistinguishedFolderId"
             withHandler   : [MPSEWSDistinguishedFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfBaseFolderIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfBaseFolderIdsType: FolderId=%@ DistinguishedFolderId=%@", _folderId, _distinguishedFolderId];
}

- (void) addFolderId:(MPSEWSFolderIdType*) elem
{
    if (![self folderId]) {
        [self setFolderId:[[NSMutableArray<MPSEWSFolderIdType*> alloc] init]];
    }
    [_folderId addObject:elem];
}

- (void) addDistinguishedFolderId:(MPSEWSDistinguishedFolderIdType*) elem
{
    if (![self distinguishedFolderId]) {
        [self setDistinguishedFolderId:[[NSMutableArray<MPSEWSDistinguishedFolderIdType*> alloc] init]];
    }
    [_distinguishedFolderId addObject:elem];
}

@end

