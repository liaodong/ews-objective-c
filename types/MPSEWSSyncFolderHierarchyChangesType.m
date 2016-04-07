#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderHierarchyChangesType.h"
#import "../types/MPSEWSSyncFolderHierarchyCreateOrUpdateType.h"
#import "../types/MPSEWSSyncFolderHierarchyDeleteType.h"


@implementation MPSEWSSyncFolderHierarchyChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderHierarchyChangesType class]];

    [handler listProperty  : @"create"
             useSelector   : @"addCreate"
             withNamespace : 't'
             withXmlTag    : @"Create"
             withHandler   : [MPSEWSSyncFolderHierarchyCreateOrUpdateType class]];

    [handler listProperty  : @"update"
             useSelector   : @"addUpdate"
             withNamespace : 't'
             withXmlTag    : @"Update"
             withHandler   : [MPSEWSSyncFolderHierarchyCreateOrUpdateType class]];

    [handler listProperty  : @"delete"
             useSelector   : @"addDelete"
             withNamespace : 't'
             withXmlTag    : @"Delete"
             withHandler   : [MPSEWSSyncFolderHierarchyDeleteType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyChangesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val create]) {
        for (MPSEWSSyncFolderHierarchyCreateOrUpdateType* obj in [val create]) {
            if (![MPSEWSSyncFolderHierarchyCreateOrUpdateType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val update]) {
        for (MPSEWSSyncFolderHierarchyCreateOrUpdateType* obj in [val update]) {
            if (![MPSEWSSyncFolderHierarchyCreateOrUpdateType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val delete]) {
        for (MPSEWSSyncFolderHierarchyDeleteType* obj in [val delete]) {
            if (![MPSEWSSyncFolderHierarchyDeleteType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSSyncFolderHierarchyChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyChangesType: Create=%@ Update=%@ Delete=%@", _create, _update, _delete];
}

- (void) addCreate:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) elem
{
    if (![self create]) {
        [self setCreate:[[NSMutableArray<MPSEWSSyncFolderHierarchyCreateOrUpdateType*> alloc] init]];
    }
    [_create addObject:elem];
}

- (void) addUpdate:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) elem
{
    if (![self update]) {
        [self setUpdate:[[NSMutableArray<MPSEWSSyncFolderHierarchyCreateOrUpdateType*> alloc] init]];
    }
    [_update addObject:elem];
}

- (void) addDelete:(MPSEWSSyncFolderHierarchyDeleteType*) elem
{
    if (![self delete]) {
        [self setDelete:[[NSMutableArray<MPSEWSSyncFolderHierarchyDeleteType*> alloc] init]];
    }
    [_delete addObject:elem];
}

@end

