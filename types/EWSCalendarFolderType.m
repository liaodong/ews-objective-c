#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarFolderType.h"


@implementation EWSCalendarFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarFolderType class]];

    [handler property   : @"folderId"
             isRequired : FALSE
             withXmlTag : @"FolderId"
             withHandler: [EWSFolderIdType class]];

    [handler property   : @"parentFolderId"
             isRequired : FALSE
             withXmlTag : @"ParentFolderId"
             withHandler: [EWSFolderIdType class]];

    [handler property   : @"folderClass"
             isRequired : FALSE
             withXmlTag : @"FolderClass"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"displayName"
             isRequired : FALSE
             withXmlTag : @"DisplayName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"totalCount"
             isRequired : FALSE
             withXmlTag : @"TotalCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"childFolderCount"
             isRequired : FALSE
             withXmlTag : @"ChildFolderCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler listProperty : @"extendedProperty"
             isNonEmpty   : FALSE
             useSelector  : @"addExtendedProperty"
             withXmlTag   : @"ExtendedProperty"
             withHandler  : [EWSExtendedPropertyType class]];

    [handler property   : @"managedFolderInformation"
             isRequired : FALSE
             withXmlTag : @"ManagedFolderInformation"
             withHandler: [EWSManagedFolderInformationType class]];

    [handler property   : @"effectiveRights"
             isRequired : FALSE
             withXmlTag : @"EffectiveRights"
             withHandler: [EWSEffectiveRightsType class]];

    [handler property   : @"permissionSet"
             isRequired : FALSE
             withXmlTag : @"PermissionSet"
             withHandler: [EWSCalendarPermissionSetType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarFolderType: PermissionSet=%@ super=%@", _permissionSet, [super description]];
}

@end

