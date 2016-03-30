#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMessageType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfRecipientsType.h"
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
#import "../types/MPSEWSSingleRecipientType.h"


@implementation MPSEWSMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMessageType class]];

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

    [handler property      : @"sender"
             withNamespace : 't'
             withXmlTag    : @"Sender"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"toRecipients"
             withNamespace : 't'
             withXmlTag    : @"ToRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"ccRecipients"
             withNamespace : 't'
             withXmlTag    : @"CcRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"bccRecipients"
             withNamespace : 't'
             withXmlTag    : @"BccRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"isReadReceiptRequested"
             withNamespace : 't'
             withXmlTag    : @"IsReadReceiptRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDeliveryReceiptRequested"
             withNamespace : 't'
             withXmlTag    : @"IsDeliveryReceiptRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"conversationIndex"
             withNamespace : 't'
             withXmlTag    : @"ConversationIndex"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler property      : @"conversationTopic"
             withNamespace : 't'
             withXmlTag    : @"ConversationTopic"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"from"
             withNamespace : 't'
             withXmlTag    : @"From"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"internetMessageId"
             withNamespace : 't'
             withXmlTag    : @"InternetMessageId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isRead"
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResponseRequested"
             withNamespace : 't'
             withXmlTag    : @"IsResponseRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"references"
             withNamespace : 't'
             withXmlTag    : @"References"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"replyTo"
             withNamespace : 't'
             withXmlTag    : @"ReplyTo"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"receivedBy"
             withNamespace : 't'
             withXmlTag    : @"ReceivedBy"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"receivedRepresenting"
             withNamespace : 't'
             withXmlTag    : @"ReceivedRepresenting"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMessageType*) val
{   (void) val;
    if (![MPSEWSItemType isValid:val]) return FALSE;
    if ([val sender] && ![MPSEWSSingleRecipientType isValid:[val sender]]) return FALSE;
    if ([val toRecipients] && ![MPSEWSArrayOfRecipientsType isValid:[val toRecipients]]) return FALSE;
    if ([val ccRecipients] && ![MPSEWSArrayOfRecipientsType isValid:[val ccRecipients]]) return FALSE;
    if ([val bccRecipients] && ![MPSEWSArrayOfRecipientsType isValid:[val bccRecipients]]) return FALSE;
    if ([val isReadReceiptRequested] && ![MPSEWSBooleanTypeHandler isValid:[val isReadReceiptRequested]]) return FALSE;
    if ([val isDeliveryReceiptRequested] && ![MPSEWSBooleanTypeHandler isValid:[val isDeliveryReceiptRequested]]) return FALSE;
    if ([val conversationIndex] && ![MPSEWSBase64BinaryTypeHandler isValid:[val conversationIndex]]) return FALSE;
    if ([val conversationTopic] && ![MPSEWSStringTypeHandler isValid:[val conversationTopic]]) return FALSE;
    if ([val from] && ![MPSEWSSingleRecipientType isValid:[val from]]) return FALSE;
    if ([val internetMessageId] && ![MPSEWSStringTypeHandler isValid:[val internetMessageId]]) return FALSE;
    if ([val isRead] && ![MPSEWSBooleanTypeHandler isValid:[val isRead]]) return FALSE;
    if ([val isResponseRequested] && ![MPSEWSBooleanTypeHandler isValid:[val isResponseRequested]]) return FALSE;
    if ([val references] && ![MPSEWSStringTypeHandler isValid:[val references]]) return FALSE;
    if ([val replyTo] && ![MPSEWSArrayOfRecipientsType isValid:[val replyTo]]) return FALSE;
    if ([val receivedBy] && ![MPSEWSSingleRecipientType isValid:[val receivedBy]]) return FALSE;
    if ([val receivedRepresenting] && ![MPSEWSSingleRecipientType isValid:[val receivedRepresenting]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MessageType: Sender=%@ ToRecipients=%@ CcRecipients=%@ BccRecipients=%@ IsReadReceiptRequested=%@ IsDeliveryReceiptRequested=%@ ConversationIndex=%@ ConversationTopic=%@ From=%@ InternetMessageId=%@ IsRead=%@ IsResponseRequested=%@ References=%@ ReplyTo=%@ ReceivedBy=%@ ReceivedRepresenting=%@ super=%@", _sender, _toRecipients, _ccRecipients, _bccRecipients, _isReadReceiptRequested, _isDeliveryReceiptRequested, _conversationIndex, _conversationTopic, _from, _internetMessageId, _isRead, _isResponseRequested, _references, _replyTo, _receivedBy, _receivedRepresenting, [super description]];
}

@end

