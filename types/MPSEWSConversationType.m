#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConversationType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfItemClassType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSFlagStatusType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"


@implementation MPSEWSConversationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConversationType class]];

    [handler property      : @"conversationId"
             withNamespace : 't'
             withXmlTag    : @"ConversationId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"conversationTopic"
             withNamespace : 't'
             withXmlTag    : @"ConversationTopic"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"uniqueRecipients"
             withNamespace : 't'
             withXmlTag    : @"UniqueRecipients"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"globalUniqueRecipients"
             withNamespace : 't'
             withXmlTag    : @"GlobalUniqueRecipients"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"uniqueUnreadSenders"
             withNamespace : 't'
             withXmlTag    : @"UniqueUnreadSenders"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"globalUniqueUnreadSenders"
             withNamespace : 't'
             withXmlTag    : @"GlobalUniqueUnreadSenders"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"uniqueSenders"
             withNamespace : 't'
             withXmlTag    : @"UniqueSenders"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"globalUniqueSenders"
             withNamespace : 't'
             withXmlTag    : @"GlobalUniqueSenders"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"lastDeliveryTime"
             withNamespace : 't'
             withXmlTag    : @"LastDeliveryTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"globalLastDeliveryTime"
             withNamespace : 't'
             withXmlTag    : @"GlobalLastDeliveryTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"categories"
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"globalCategories"
             withNamespace : 't'
             withXmlTag    : @"GlobalCategories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"flagStatus"
             withNamespace : 't'
             withXmlTag    : @"FlagStatus"
             withHandler   : [MPSEWSFlagStatusType class]];

    [handler property      : @"globalFlagStatus"
             withNamespace : 't'
             withXmlTag    : @"GlobalFlagStatus"
             withHandler   : [MPSEWSFlagStatusType class]];

    [handler property      : @"hasAttachments"
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"globalHasAttachments"
             withNamespace : 't'
             withXmlTag    : @"GlobalHasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"messageCount"
             withNamespace : 't'
             withXmlTag    : @"MessageCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"globalMessageCount"
             withNamespace : 't'
             withXmlTag    : @"GlobalMessageCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"unreadCount"
             withNamespace : 't'
             withXmlTag    : @"UnreadCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"globalUnreadCount"
             withNamespace : 't'
             withXmlTag    : @"GlobalUnreadCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"size"
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"globalSize"
             withNamespace : 't'
             withXmlTag    : @"GlobalSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"itemClasses"
             withNamespace : 't'
             withXmlTag    : @"ItemClasses"
             withHandler   : [MPSEWSArrayOfItemClassType class]];

    [handler property      : @"globalItemClasses"
             withNamespace : 't'
             withXmlTag    : @"GlobalItemClasses"
             withHandler   : [MPSEWSArrayOfItemClassType class]];

    [handler property      : @"importance"
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"globalImportance"
             withNamespace : 't'
             withXmlTag    : @"GlobalImportance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"itemIds"
             withNamespace : 't'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"globalItemIds"
             withNamespace : 't'
             withXmlTag    : @"GlobalItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConversationType*) val
{   (void) val;
    if ([val conversationId] && ![MPSEWSItemIdType isValid:[val conversationId]]) return FALSE;
    if ([val conversationTopic] && ![MPSEWSStringTypeHandler isValid:[val conversationTopic]]) return FALSE;
    if ([val uniqueRecipients] && ![MPSEWSArrayOfStringsType isValid:[val uniqueRecipients]]) return FALSE;
    if ([val globalUniqueRecipients] && ![MPSEWSArrayOfStringsType isValid:[val globalUniqueRecipients]]) return FALSE;
    if ([val uniqueUnreadSenders] && ![MPSEWSArrayOfStringsType isValid:[val uniqueUnreadSenders]]) return FALSE;
    if ([val globalUniqueUnreadSenders] && ![MPSEWSArrayOfStringsType isValid:[val globalUniqueUnreadSenders]]) return FALSE;
    if ([val uniqueSenders] && ![MPSEWSArrayOfStringsType isValid:[val uniqueSenders]]) return FALSE;
    if ([val globalUniqueSenders] && ![MPSEWSArrayOfStringsType isValid:[val globalUniqueSenders]]) return FALSE;
    if ([val lastDeliveryTime] && ![MPSEWSDateTimeTypeHandler isValid:[val lastDeliveryTime]]) return FALSE;
    if ([val globalLastDeliveryTime] && ![MPSEWSDateTimeTypeHandler isValid:[val globalLastDeliveryTime]]) return FALSE;
    if ([val categories] && ![MPSEWSArrayOfStringsType isValid:[val categories]]) return FALSE;
    if ([val globalCategories] && ![MPSEWSArrayOfStringsType isValid:[val globalCategories]]) return FALSE;
    if ([val flagStatus] && ![MPSEWSFlagStatusType isValid:[val flagStatus]]) return FALSE;
    if ([val globalFlagStatus] && ![MPSEWSFlagStatusType isValid:[val globalFlagStatus]]) return FALSE;
    if ([val hasAttachments] && ![MPSEWSBooleanTypeHandler isValid:[val hasAttachments]]) return FALSE;
    if ([val globalHasAttachments] && ![MPSEWSBooleanTypeHandler isValid:[val globalHasAttachments]]) return FALSE;
    if ([val messageCount] && ![MPSEWSIntegerTypeHandler isValid:[val messageCount]]) return FALSE;
    if ([val globalMessageCount] && ![MPSEWSIntegerTypeHandler isValid:[val globalMessageCount]]) return FALSE;
    if ([val unreadCount] && ![MPSEWSIntegerTypeHandler isValid:[val unreadCount]]) return FALSE;
    if ([val globalUnreadCount] && ![MPSEWSIntegerTypeHandler isValid:[val globalUnreadCount]]) return FALSE;
    if ([val size] && ![MPSEWSIntegerTypeHandler isValid:[val size]]) return FALSE;
    if ([val globalSize] && ![MPSEWSIntegerTypeHandler isValid:[val globalSize]]) return FALSE;
    if ([val itemClasses] && ![MPSEWSArrayOfItemClassType isValid:[val itemClasses]]) return FALSE;
    if ([val globalItemClasses] && ![MPSEWSArrayOfItemClassType isValid:[val globalItemClasses]]) return FALSE;
    if ([val importance] && ![MPSEWSImportanceChoicesType isValid:[val importance]]) return FALSE;
    if ([val globalImportance] && ![MPSEWSImportanceChoicesType isValid:[val globalImportance]]) return FALSE;
    if ([val itemIds] && ![MPSEWSNonEmptyArrayOfBaseItemIdsType isValid:[val itemIds]]) return FALSE;
    if ([val globalItemIds] && ![MPSEWSNonEmptyArrayOfBaseItemIdsType isValid:[val globalItemIds]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConversationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConversationType: ConversationId=%@ ConversationTopic=%@ UniqueRecipients=%@ GlobalUniqueRecipients=%@ UniqueUnreadSenders=%@ GlobalUniqueUnreadSenders=%@ UniqueSenders=%@ GlobalUniqueSenders=%@ LastDeliveryTime=%@ GlobalLastDeliveryTime=%@ Categories=%@ GlobalCategories=%@ FlagStatus=%@ GlobalFlagStatus=%@ HasAttachments=%@ GlobalHasAttachments=%@ MessageCount=%@ GlobalMessageCount=%@ UnreadCount=%@ GlobalUnreadCount=%@ Size=%@ GlobalSize=%@ ItemClasses=%@ GlobalItemClasses=%@ Importance=%@ GlobalImportance=%@ ItemIds=%@ GlobalItemIds=%@", _conversationId, _conversationTopic, _uniqueRecipients, _globalUniqueRecipients, _uniqueUnreadSenders, _globalUniqueUnreadSenders, _uniqueSenders, _globalUniqueSenders, _lastDeliveryTime, _globalLastDeliveryTime, _categories, _globalCategories, _flagStatus, _globalFlagStatus, _hasAttachments, _globalHasAttachments, _messageCount, _globalMessageCount, _unreadCount, _globalUnreadCount, _size, _globalSize, _itemClasses, _globalItemClasses, _importance, _globalImportance, _itemIds, _globalItemIds];
}

@end

