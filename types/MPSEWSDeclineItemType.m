#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeclineItemType.h"
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


@implementation MPSEWSDeclineItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeclineItemType class]];

    [handler property    : @"objectName"
             isRequired  : FALSE
             withAttrTag : @"ObjectName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mimeContent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [MPSEWSMimeContentType class]];

    [handler property      : @"itemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [MPSEWSItemClassType class]];

    [handler property      : @"subject"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [MPSEWSSensitivityChoicesType class]];

    [handler property      : @"body"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"attachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"importance"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [MPSEWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [MPSEWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [MPSEWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"culture"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [MPSEWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"sender"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sender"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"toRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ToRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"ccRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CcRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"bccRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BccRecipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"isReadReceiptRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsReadReceiptRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDeliveryReceiptRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDeliveryReceiptRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"conversationIndex"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConversationIndex"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler property      : @"conversationTopic"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConversationTopic"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"from"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"From"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"internetMessageId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isRead"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResponseRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResponseRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"references"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"References"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"replyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReplyTo"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"receivedBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceivedBy"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"receivedRepresenting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceivedRepresenting"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"referenceItemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReferenceItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeclineItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeclineItemType: super=%@", [super description]];
}

@end

