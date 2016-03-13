#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSResponseObjectCoreType.h"


@implementation EWSResponseObjectCoreType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSResponseObjectCoreType class]];

    [handler property      : @"mimeContent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [EWSMimeContentType class]];

    [handler property      : @"itemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"itemClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [EWSItemClassType class]];

    [handler property      : @"subject"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [EWSSensitivityChoicesType class]];

    [handler property      : @"body"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [EWSBodyType class]];

    [handler property      : @"attachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [EWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"importance"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [EWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [EWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [EWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [EWSExtendedPropertyType class]];

    [handler property      : @"culture"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [EWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [EWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"sender"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sender"
             withHandler   : [EWSSingleRecipientType class]];

    [handler property      : @"toRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ToRecipients"
             withHandler   : [EWSArrayOfRecipientsType class]];

    [handler property      : @"ccRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CcRecipients"
             withHandler   : [EWSArrayOfRecipientsType class]];

    [handler property      : @"bccRecipients"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BccRecipients"
             withHandler   : [EWSArrayOfRecipientsType class]];

    [handler property      : @"isReadReceiptRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsReadReceiptRequested"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isDeliveryReceiptRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDeliveryReceiptRequested"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"conversationIndex"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConversationIndex"
             withHandler   : [EWSBase64BinaryTypeHandler class]];

    [handler property      : @"conversationTopic"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConversationTopic"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"from"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"From"
             withHandler   : [EWSSingleRecipientType class]];

    [handler property      : @"internetMessageId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageId"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"isRead"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRead"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isResponseRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResponseRequested"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"references"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"References"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"replyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReplyTo"
             withHandler   : [EWSArrayOfRecipientsType class]];

    [handler property      : @"receivedBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceivedBy"
             withHandler   : [EWSSingleRecipientType class]];

    [handler property      : @"receivedRepresenting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceivedRepresenting"
             withHandler   : [EWSSingleRecipientType class]];

    [handler property      : @"referenceItemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReferenceItemId"
             withHandler   : [EWSItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSResponseObjectCoreType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResponseObjectCoreType: ReferenceItemId=%@ super=%@", _referenceItemId, [super description]];
}

@end

