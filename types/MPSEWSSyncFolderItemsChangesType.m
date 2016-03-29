#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsChangesType.h"
#import "../types/MPSEWSSyncFolderItemsCreateOrUpdateType.h"
#import "../types/MPSEWSSyncFolderItemsDeleteType.h"
#import "../types/MPSEWSSyncFolderItemsReadFlagType.h"


@implementation MPSEWSSyncFolderItemsChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsChangesType class]];

    [handler listProperty  : @"create"
             useSelector   : @"addCreate"
             withNamespace : 't'
             withXmlTag    : @"Create"
             withHandler   : [MPSEWSSyncFolderItemsCreateOrUpdateType class]];

    [handler listProperty  : @"update"
             useSelector   : @"addUpdate"
             withNamespace : 't'
             withXmlTag    : @"Update"
             withHandler   : [MPSEWSSyncFolderItemsCreateOrUpdateType class]];

    [handler listProperty  : @"delete"
             useSelector   : @"addDelete"
             withNamespace : 't'
             withXmlTag    : @"Delete"
             withHandler   : [MPSEWSSyncFolderItemsDeleteType class]];

    [handler listProperty  : @"readFlagChange"
             useSelector   : @"addReadFlagChange"
             withNamespace : 't'
             withXmlTag    : @"ReadFlagChange"
             withHandler   : [MPSEWSSyncFolderItemsReadFlagType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsChangesType: Create=%@ Update=%@ Delete=%@ ReadFlagChange=%@", _create, _update, _delete, _readFlagChange];
}

- (void) addCreate:(MPSEWSSyncFolderItemsCreateOrUpdateType*) elem
{
    if (![self create]) {
        [self setCreate:[[NSMutableArray<MPSEWSSyncFolderItemsCreateOrUpdateType*> alloc] init]];
    }
    [_create addObject:elem];
}

- (void) addUpdate:(MPSEWSSyncFolderItemsCreateOrUpdateType*) elem
{
    if (![self update]) {
        [self setUpdate:[[NSMutableArray<MPSEWSSyncFolderItemsCreateOrUpdateType*> alloc] init]];
    }
    [_update addObject:elem];
}

- (void) addDelete:(MPSEWSSyncFolderItemsDeleteType*) elem
{
    if (![self delete]) {
        [self setDelete:[[NSMutableArray<MPSEWSSyncFolderItemsDeleteType*> alloc] init]];
    }
    [_delete addObject:elem];
}

- (void) addReadFlagChange:(MPSEWSSyncFolderItemsReadFlagType*) elem
{
    if (![self readFlagChange]) {
        [self setReadFlagChange:[[NSMutableArray<MPSEWSSyncFolderItemsReadFlagType*> alloc] init]];
    }
    [_readFlagChange addObject:elem];
}

@end

