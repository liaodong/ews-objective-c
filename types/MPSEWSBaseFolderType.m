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
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"folderClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderClass"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TotalCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"childFolderCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ChildFolderCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"managedFolderInformation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderInformation"
             withHandler   : [MPSEWSManagedFolderInformationType class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler register];
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

