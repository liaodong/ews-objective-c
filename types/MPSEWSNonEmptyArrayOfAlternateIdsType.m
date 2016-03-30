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

    [handler listProperty  : @"alternateId"
             useSelector   : @"addAlternateId"
             withNamespace : 't'
             withXmlTag    : @"AlternateId"
             withHandler   : [MPSEWSAlternateIdType class]];

    [handler listProperty  : @"alternatePublicFolderId"
             useSelector   : @"addAlternatePublicFolderId"
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderId"
             withHandler   : [MPSEWSAlternatePublicFolderIdType class]];

    [handler listProperty  : @"alternatePublicFolderItemId"
             useSelector   : @"addAlternatePublicFolderItemId"
             withNamespace : 't'
             withXmlTag    : @"AlternatePublicFolderItemId"
             withHandler   : [MPSEWSAlternatePublicFolderItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAlternateIdsType*) val
{   (void) val;
    if ([val alternateId]) {
        for (MPSEWSAlternateIdType* obj in [val alternateId]) {
            if (![MPSEWSAlternateIdType isValid:obj]) return FALSE;
        }
    }
    if ([val alternatePublicFolderId]) {
        for (MPSEWSAlternatePublicFolderIdType* obj in [val alternatePublicFolderId]) {
            if (![MPSEWSAlternatePublicFolderIdType isValid:obj]) return FALSE;
        }
    }
    if ([val alternatePublicFolderItemId]) {
        for (MPSEWSAlternatePublicFolderItemIdType* obj in [val alternatePublicFolderItemId]) {
            if (![MPSEWSAlternatePublicFolderItemIdType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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

- (void) addAlternateId:(MPSEWSAlternateIdType*) elem
{
    if (![self alternateId]) {
        [self setAlternateId:[[NSMutableArray<MPSEWSAlternateIdType*> alloc] init]];
    }
    [_alternateId addObject:elem];
}

- (void) addAlternatePublicFolderId:(MPSEWSAlternatePublicFolderIdType*) elem
{
    if (![self alternatePublicFolderId]) {
        [self setAlternatePublicFolderId:[[NSMutableArray<MPSEWSAlternatePublicFolderIdType*> alloc] init]];
    }
    [_alternatePublicFolderId addObject:elem];
}

- (void) addAlternatePublicFolderItemId:(MPSEWSAlternatePublicFolderItemIdType*) elem
{
    if (![self alternatePublicFolderItemId]) {
        [self setAlternatePublicFolderItemId:[[NSMutableArray<MPSEWSAlternatePublicFolderItemIdType*> alloc] init]];
    }
    [_alternatePublicFolderItemId addObject:elem];
}

@end

