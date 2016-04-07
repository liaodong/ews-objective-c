#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindItemType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSCalendarViewType.h"
#import "../types/MPSEWSContactsViewType.h"
#import "../types/MPSEWSDistinguishedGroupByType.h"
#import "../types/MPSEWSFractionalPageViewType.h"
#import "../types/MPSEWSGroupByType.h"
#import "../types/MPSEWSIndexedPageViewType.h"
#import "../types/MPSEWSItemQueryTraversalType.h"
#import "../types/MPSEWSItemResponseShapeType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/MPSEWSRestrictionType.h"


@implementation MPSEWSFindItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindItemType class]];

    [handler property    : @"traversal"
             withAttrTag : @"Traversal"
             withHandler : [MPSEWSItemQueryTraversalType class]];

    [handler property      : @"itemShape"
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"indexedPageItemView"
             withNamespace : 'm'
             withXmlTag    : @"IndexedPageItemView"
             withHandler   : [MPSEWSIndexedPageViewType class]];

    [handler property      : @"fractionalPageItemView"
             withNamespace : 'm'
             withXmlTag    : @"FractionalPageItemView"
             withHandler   : [MPSEWSFractionalPageViewType class]];

    [handler property      : @"calendarView"
             withNamespace : 'm'
             withXmlTag    : @"CalendarView"
             withHandler   : [MPSEWSCalendarViewType class]];

    [handler property      : @"contactsView"
             withNamespace : 'm'
             withXmlTag    : @"ContactsView"
             withHandler   : [MPSEWSContactsViewType class]];

    [handler property      : @"groupBy"
             withNamespace : 'm'
             withXmlTag    : @"GroupBy"
             withHandler   : [MPSEWSGroupByType class]];

    [handler property      : @"distinguishedGroupBy"
             withNamespace : 'm'
             withXmlTag    : @"DistinguishedGroupBy"
             withHandler   : [MPSEWSDistinguishedGroupByType class]];

    [handler property      : @"restriction"
             withNamespace : 'm'
             withXmlTag    : @"Restriction"
             withHandler   : [MPSEWSRestrictionType class]];

    [handler property      : @"sortOrder"
             withNamespace : 'm'
             withXmlTag    : @"SortOrder"
             withHandler   : [MPSEWSNonEmptyArrayOfFieldOrdersType class]];

    [handler property      : @"parentFolderIds"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"queryString"
             withNamespace : 'm'
             withXmlTag    : @"QueryString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val traversal] && ![MPSEWSItemQueryTraversalType isValid:[val traversal] forVersion: ver]) return FALSE;
    if ([val itemShape] && ![MPSEWSItemResponseShapeType isValid:[val itemShape] forVersion:ver]) return FALSE;
    if ([val indexedPageItemView] && ![MPSEWSIndexedPageViewType isValid:[val indexedPageItemView] forVersion:ver]) return FALSE;
    if ([val fractionalPageItemView] && ![MPSEWSFractionalPageViewType isValid:[val fractionalPageItemView] forVersion:ver]) return FALSE;
    if ([val calendarView] && ![MPSEWSCalendarViewType isValid:[val calendarView] forVersion:ver]) return FALSE;
    if ([val contactsView] && ![MPSEWSContactsViewType isValid:[val contactsView] forVersion:ver]) return FALSE;
    if ([val groupBy] && ![MPSEWSGroupByType isValid:[val groupBy] forVersion:ver]) return FALSE;
    if ([val distinguishedGroupBy] && ![MPSEWSDistinguishedGroupByType isValid:[val distinguishedGroupBy] forVersion:ver]) return FALSE;
    if ([val restriction] && ![MPSEWSRestrictionType isValid:[val restriction] forVersion:ver]) return FALSE;
    if ([val sortOrder] && ![MPSEWSNonEmptyArrayOfFieldOrdersType isValid:[val sortOrder] forVersion:ver]) return FALSE;
    if ([val parentFolderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val parentFolderIds] forVersion:ver]) return FALSE;
    if ([val queryString] && ![MPSEWSStringTypeHandler isValid:[val queryString] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemType: Traversal=%@ ItemShape=%@ IndexedPageItemView=%@ FractionalPageItemView=%@ CalendarView=%@ ContactsView=%@ GroupBy=%@ DistinguishedGroupBy=%@ Restriction=%@ SortOrder=%@ ParentFolderIds=%@ QueryString=%@ super=%@", _traversal, _itemShape, _indexedPageItemView, _fractionalPageItemView, _calendarView, _contactsView, _groupBy, _distinguishedGroupBy, _restriction, _sortOrder, _parentFolderIds, _queryString, [super description]];
}

@end

