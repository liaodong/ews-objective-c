#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSBodyType.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemClassType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSMimeContentType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/MPSEWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/MPSEWSReminderMinutesBeforeStartType.h"
#import "../types/MPSEWSSensitivityChoicesType.h"


@implementation MPSEWSItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemType class]];

    [handler property      : @"mimeContent"
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [MPSEWSMimeContentType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemClass"
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [MPSEWSItemClassType class]];

    [handler property      : @"subject"
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [MPSEWSSensitivityChoicesType class]];

    [handler property      : @"body"
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"attachments"
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"importance"
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [MPSEWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [MPSEWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [MPSEWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"culture"
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [MPSEWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isAssociated"
             withNamespace : 't'
             withXmlTag    : @"IsAssociated"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"webClientReadFormQueryString"
             withNamespace : 't'
             withXmlTag    : @"WebClientReadFormQueryString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"webClientEditFormQueryString"
             withNamespace : 't'
             withXmlTag    : @"WebClientEditFormQueryString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"conversationId"
             withNamespace : 't'
             withXmlTag    : @"ConversationId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"uniqueBody"
             withNamespace : 't'
             withXmlTag    : @"UniqueBody"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"storeEntryId"
             withNamespace : 't'
             withXmlTag    : @"StoreEntryId"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val mimeContent] && ![MPSEWSMimeContentType isValid:[val mimeContent] forVersion:ver]) return FALSE;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId] forVersion:ver]) return FALSE;
    if ([val parentFolderId] && ![MPSEWSFolderIdType isValid:[val parentFolderId] forVersion:ver]) return FALSE;
    if ([val itemClass] && ![MPSEWSItemClassType isValid:[val itemClass] forVersion:ver]) return FALSE;
    if ([val subject] && ![MPSEWSStringTypeHandler isValid:[val subject] forVersion:ver]) return FALSE;
    if ([val sensitivity] && ![MPSEWSSensitivityChoicesType isValid:[val sensitivity] forVersion:ver]) return FALSE;
    if ([val body] && ![MPSEWSBodyType isValid:[val body] forVersion:ver]) return FALSE;
    if ([val attachments] && ![MPSEWSNonEmptyArrayOfAttachmentsType isValid:[val attachments] forVersion:ver]) return FALSE;
    if ([val dateTimeReceived] && ![MPSEWSDateTimeTypeHandler isValid:[val dateTimeReceived] forVersion:ver]) return FALSE;
    if ([val size] && ![MPSEWSIntegerTypeHandler isValid:[val size] forVersion:ver]) return FALSE;
    if ([val categories] && ![MPSEWSArrayOfStringsType isValid:[val categories] forVersion:ver]) return FALSE;
    if ([val importance] && ![MPSEWSImportanceChoicesType isValid:[val importance] forVersion:ver]) return FALSE;
    if ([val inReplyTo] && ![MPSEWSStringTypeHandler isValid:[val inReplyTo] forVersion:ver]) return FALSE;
    if ([val isSubmitted] && ![MPSEWSBooleanTypeHandler isValid:[val isSubmitted] forVersion:ver]) return FALSE;
    if ([val isDraft] && ![MPSEWSBooleanTypeHandler isValid:[val isDraft] forVersion:ver]) return FALSE;
    if ([val isFromMe] && ![MPSEWSBooleanTypeHandler isValid:[val isFromMe] forVersion:ver]) return FALSE;
    if ([val isResend] && ![MPSEWSBooleanTypeHandler isValid:[val isResend] forVersion:ver]) return FALSE;
    if ([val isUnmodified] && ![MPSEWSBooleanTypeHandler isValid:[val isUnmodified] forVersion:ver]) return FALSE;
    if ([val internetMessageHeaders] && ![MPSEWSNonEmptyArrayOfInternetHeadersType isValid:[val internetMessageHeaders] forVersion:ver]) return FALSE;
    if ([val dateTimeSent] && ![MPSEWSDateTimeTypeHandler isValid:[val dateTimeSent] forVersion:ver]) return FALSE;
    if ([val dateTimeCreated] && ![MPSEWSDateTimeTypeHandler isValid:[val dateTimeCreated] forVersion:ver]) return FALSE;
    if ([val responseObjects] && ![MPSEWSNonEmptyArrayOfResponseObjectsType isValid:[val responseObjects] forVersion:ver]) return FALSE;
    if ([val reminderDueBy] && ![MPSEWSDateTimeTypeHandler isValid:[val reminderDueBy] forVersion:ver]) return FALSE;
    if ([val reminderIsSet] && ![MPSEWSBooleanTypeHandler isValid:[val reminderIsSet] forVersion:ver]) return FALSE;
    if ([val reminderMinutesBeforeStart] && ![MPSEWSReminderMinutesBeforeStartType isValid:[val reminderMinutesBeforeStart] forVersion:ver]) return FALSE;
    if ([val displayCc] && ![MPSEWSStringTypeHandler isValid:[val displayCc] forVersion:ver]) return FALSE;
    if ([val displayTo] && ![MPSEWSStringTypeHandler isValid:[val displayTo] forVersion:ver]) return FALSE;
    if ([val hasAttachments] && ![MPSEWSBooleanTypeHandler isValid:[val hasAttachments] forVersion:ver]) return FALSE;
    if ([val extendedProperty]) {
        for (MPSEWSExtendedPropertyType* obj in [val extendedProperty]) {
            if (![MPSEWSExtendedPropertyType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val culture] && ![MPSEWSLanguageTypeHandler isValid:[val culture] forVersion:ver]) return FALSE;
    if ([val effectiveRights] && ![MPSEWSEffectiveRightsType isValid:[val effectiveRights] forVersion:ver]) return FALSE;
    if ([val lastModifiedName] && ![MPSEWSStringTypeHandler isValid:[val lastModifiedName] forVersion:ver]) return FALSE;
    if ([val lastModifiedTime] && ![MPSEWSDateTimeTypeHandler isValid:[val lastModifiedTime] forVersion:ver]) return FALSE;
    if ([val isAssociated] && ![MPSEWSBooleanTypeHandler isValid:[val isAssociated] forVersion:ver]) return FALSE;
    if ([val webClientReadFormQueryString] && ![MPSEWSStringTypeHandler isValid:[val webClientReadFormQueryString] forVersion:ver]) return FALSE;
    if ([val webClientEditFormQueryString] && ![MPSEWSStringTypeHandler isValid:[val webClientEditFormQueryString] forVersion:ver]) return FALSE;
    if ([val conversationId] && ![MPSEWSItemIdType isValid:[val conversationId] forVersion:ver]) return FALSE;
    if ([val uniqueBody] && ![MPSEWSBodyType isValid:[val uniqueBody] forVersion:ver]) return FALSE;
    if ([val storeEntryId] && ![MPSEWSBase64BinaryTypeHandler isValid:[val storeEntryId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemType: MimeContent=%@ ItemId=%@ ParentFolderId=%@ ItemClass=%@ Subject=%@ Sensitivity=%@ Body=%@ Attachments=%@ DateTimeReceived=%@ Size=%@ Categories=%@ Importance=%@ InReplyTo=%@ IsSubmitted=%@ IsDraft=%@ IsFromMe=%@ IsResend=%@ IsUnmodified=%@ InternetMessageHeaders=%@ DateTimeSent=%@ DateTimeCreated=%@ ResponseObjects=%@ ReminderDueBy=%@ ReminderIsSet=%@ ReminderMinutesBeforeStart=%@ DisplayCc=%@ DisplayTo=%@ HasAttachments=%@ ExtendedProperty=%@ Culture=%@ EffectiveRights=%@ LastModifiedName=%@ LastModifiedTime=%@ IsAssociated=%@ WebClientReadFormQueryString=%@ WebClientEditFormQueryString=%@ ConversationId=%@ UniqueBody=%@ StoreEntryId=%@", _mimeContent, _itemId, _parentFolderId, _itemClass, _subject, _sensitivity, _body, _attachments, _dateTimeReceived, _size, _categories, _importance, _inReplyTo, _isSubmitted, _isDraft, _isFromMe, _isResend, _isUnmodified, _internetMessageHeaders, _dateTimeSent, _dateTimeCreated, _responseObjects, _reminderDueBy, _reminderIsSet, _reminderMinutesBeforeStart, _displayCc, _displayTo, _hasAttachments, _extendedProperty, _culture, _effectiveRights, _lastModifiedName, _lastModifiedTime, _isAssociated, _webClientReadFormQueryString, _webClientEditFormQueryString, _conversationId, _uniqueBody, _storeEntryId];
}

- (void) addExtendedProperty:(MPSEWSExtendedPropertyType*) elem
{
    if (![self extendedProperty]) {
        [self setExtendedProperty:[[NSMutableArray<MPSEWSExtendedPropertyType*> alloc] init]];
    }
    [_extendedProperty addObject:elem];
}

@end

