#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseFolderType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSManagedFolderInformationType.h"


@implementation MPSEWSBaseFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseFolderType class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"folderClass"
             withNamespace : 't'
             withXmlTag    : @"FolderClass"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalCount"
             withNamespace : 't'
             withXmlTag    : @"TotalCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"childFolderCount"
             withNamespace : 't'
             withXmlTag    : @"ChildFolderCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"managedFolderInformation"
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderInformation"
             withHandler   : [MPSEWSManagedFolderInformationType class]];

    [handler property      : @"effectiveRights"
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseFolderType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val folderId] && ![MPSEWSFolderIdType isValid:[val folderId] forVersion:ver]) return FALSE;
    if ([val parentFolderId] && ![MPSEWSFolderIdType isValid:[val parentFolderId] forVersion:ver]) return FALSE;
    if ([val folderClass] && ![MPSEWSStringTypeHandler isValid:[val folderClass] forVersion:ver]) return FALSE;
    if ([val displayName] && ![MPSEWSStringTypeHandler isValid:[val displayName] forVersion:ver]) return FALSE;
    if ([val totalCount] && ![MPSEWSIntegerTypeHandler isValid:[val totalCount] forVersion:ver]) return FALSE;
    if ([val childFolderCount] && ![MPSEWSIntegerTypeHandler isValid:[val childFolderCount] forVersion:ver]) return FALSE;
    if ([val extendedProperty]) {
        for (MPSEWSExtendedPropertyType* obj in [val extendedProperty]) {
            if (![MPSEWSExtendedPropertyType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val managedFolderInformation] && ![MPSEWSManagedFolderInformationType isValid:[val managedFolderInformation] forVersion:ver]) return FALSE;
    if ([val effectiveRights] && ![MPSEWSEffectiveRightsType isValid:[val effectiveRights] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseFolderType: FolderId=%@ ParentFolderId=%@ FolderClass=%@ DisplayName=%@ TotalCount=%@ ChildFolderCount=%@ ExtendedProperty=%@ ManagedFolderInformation=%@ EffectiveRights=%@", _folderId, _parentFolderId, _folderClass, _displayName, _totalCount, _childFolderCount, _extendedProperty, _managedFolderInformation, _effectiveRights];
}

- (void) addExtendedProperty:(MPSEWSExtendedPropertyType*) elem
{
    if (![self extendedProperty]) {
        [self setExtendedProperty:[[NSMutableArray<MPSEWSExtendedPropertyType*> alloc] init]];
    }
    [_extendedProperty addObject:elem];
}

@end

