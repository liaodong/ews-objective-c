#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConversationActionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSConversationActionTypeType.h"
#import "../types/MPSEWSDisposalType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSConversationActionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConversationActionType class]];

    [handler property      : @"action"
             withNamespace : 't'
             withXmlTag    : @"Action"
             withHandler   : [MPSEWSConversationActionTypeType class]];

    [handler property      : @"conversationId"
             withNamespace : 't'
             withXmlTag    : @"ConversationId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"contextFolderId"
             withNamespace : 't'
             withXmlTag    : @"ContextFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"conversationLastSyncTime"
             withNamespace : 't'
             withXmlTag    : @"ConversationLastSyncTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"processRightAway"
             withNamespace : 't'
             withXmlTag    : @"ProcessRightAway"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"destinationFolderId"
             withNamespace : 't'
             withXmlTag    : @"DestinationFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"categories"
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"enableAlwaysDelete"
             withNamespace : 't'
             withXmlTag    : @"EnableAlwaysDelete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRead"
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"deleteType"
             withNamespace : 't'
             withXmlTag    : @"DeleteType"
             withHandler   : [MPSEWSDisposalType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConversationActionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val action] && ![MPSEWSConversationActionTypeType isValid:[val action] forVersion:ver]) return FALSE;
    if ([val conversationId] && ![MPSEWSItemIdType isValid:[val conversationId] forVersion:ver]) return FALSE;
    if ([val contextFolderId] && ![MPSEWSTargetFolderIdType isValid:[val contextFolderId] forVersion:ver]) return FALSE;
    if ([val conversationLastSyncTime] && ![MPSEWSDateTimeTypeHandler isValid:[val conversationLastSyncTime] forVersion:ver]) return FALSE;
    if ([val processRightAway] && ![MPSEWSBooleanTypeHandler isValid:[val processRightAway] forVersion:ver]) return FALSE;
    if ([val destinationFolderId] && ![MPSEWSTargetFolderIdType isValid:[val destinationFolderId] forVersion:ver]) return FALSE;
    if ([val categories] && ![MPSEWSArrayOfStringsType isValid:[val categories] forVersion:ver]) return FALSE;
    if ([val enableAlwaysDelete] && ![MPSEWSBooleanTypeHandler isValid:[val enableAlwaysDelete] forVersion:ver]) return FALSE;
    if ([val isRead] && ![MPSEWSBooleanTypeHandler isValid:[val isRead] forVersion:ver]) return FALSE;
    if ([val deleteType] && ![MPSEWSDisposalType isValid:[val deleteType] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConversationActionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConversationActionType: Action=%@ ConversationId=%@ ContextFolderId=%@ ConversationLastSyncTime=%@ ProcessRightAway=%@ DestinationFolderId=%@ Categories=%@ EnableAlwaysDelete=%@ IsRead=%@ DeleteType=%@", _action, _conversationId, _contextFolderId, _conversationLastSyncTime, _processRightAway, _destinationFolderId, _categories, _enableAlwaysDelete, _isRead, _deleteType];
}

@end

