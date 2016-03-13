#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSReplyAllToItemType.h"


@implementation EWSReplyAllToItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSReplyAllToItemType class]];

    [handler property    : @"objectName"
             isRequired  : FALSE
             withAttrTag : @"ObjectName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property   : @"mimeContent"
             isRequired : FALSE
             withXmlTag : @"MimeContent"
             withHandler: [EWSMimeContentType class]];

    [handler property   : @"itemId"
             isRequired : FALSE
             withXmlTag : @"ItemId"
             withHandler: [EWSItemIdType class]];

    [handler property   : @"parentFolderId"
             isRequired : FALSE
             withXmlTag : @"ParentFolderId"
             withHandler: [EWSFolderIdType class]];

    [handler property   : @"itemClass"
             isRequired : FALSE
             withXmlTag : @"ItemClass"
             withHandler: [EWSItemClassType class]];

    [handler property   : @"subject"
             isRequired : FALSE
             withXmlTag : @"Subject"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"sensitivity"
             isRequired : FALSE
             withXmlTag : @"Sensitivity"
             withHandler: [EWSSensitivityChoicesType class]];

    [handler property   : @"body"
             isRequired : FALSE
             withXmlTag : @"Body"
             withHandler: [EWSBodyType class]];

    [handler property   : @"attachments"
             isRequired : FALSE
             withXmlTag : @"Attachments"
             withHandler: [EWSNonEmptyArrayOfAttachmentsType class]];

    [handler property   : @"dateTimeReceived"
             isRequired : FALSE
             withXmlTag : @"DateTimeReceived"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"size"
             isRequired : FALSE
             withXmlTag : @"Size"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"categories"
             isRequired : FALSE
             withXmlTag : @"Categories"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"importance"
             isRequired : FALSE
             withXmlTag : @"Importance"
             withHandler: [EWSImportanceChoicesType class]];

    [handler property   : @"inReplyTo"
             isRequired : FALSE
             withXmlTag : @"InReplyTo"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"isSubmitted"
             isRequired : FALSE
             withXmlTag : @"IsSubmitted"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isDraft"
             isRequired : FALSE
             withXmlTag : @"IsDraft"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFromMe"
             isRequired : FALSE
             withXmlTag : @"IsFromMe"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isResend"
             isRequired : FALSE
             withXmlTag : @"IsResend"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isUnmodified"
             isRequired : FALSE
             withXmlTag : @"IsUnmodified"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"internetMessageHeaders"
             isRequired : FALSE
             withXmlTag : @"InternetMessageHeaders"
             withHandler: [EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property   : @"dateTimeSent"
             isRequired : FALSE
             withXmlTag : @"DateTimeSent"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"dateTimeCreated"
             isRequired : FALSE
             withXmlTag : @"DateTimeCreated"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"responseObjects"
             isRequired : FALSE
             withXmlTag : @"ResponseObjects"
             withHandler: [EWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property   : @"reminderDueBy"
             isRequired : FALSE
             withXmlTag : @"ReminderDueBy"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"reminderIsSet"
             isRequired : FALSE
             withXmlTag : @"ReminderIsSet"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"reminderMinutesBeforeStart"
             isRequired : FALSE
             withXmlTag : @"ReminderMinutesBeforeStart"
             withHandler: [EWSReminderMinutesBeforeStartType class]];

    [handler property   : @"displayCc"
             isRequired : FALSE
             withXmlTag : @"DisplayCc"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"displayTo"
             isRequired : FALSE
             withXmlTag : @"DisplayTo"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"hasAttachments"
             isRequired : FALSE
             withXmlTag : @"HasAttachments"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler listProperty : @"extendedProperty"
             isNonEmpty   : FALSE
             useSelector  : @"addExtendedProperty"
             withXmlTag   : @"ExtendedProperty"
             withHandler  : [EWSExtendedPropertyType class]];

    [handler property   : @"culture"
             isRequired : FALSE
             withXmlTag : @"Culture"
             withHandler: [EWSLanguageTypeHandler class]];

    [handler property   : @"effectiveRights"
             isRequired : FALSE
             withXmlTag : @"EffectiveRights"
             withHandler: [EWSEffectiveRightsType class]];

    [handler property   : @"lastModifiedName"
             isRequired : FALSE
             withXmlTag : @"LastModifiedName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"lastModifiedTime"
             isRequired : FALSE
             withXmlTag : @"LastModifiedTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"sender"
             isRequired : FALSE
             withXmlTag : @"Sender"
             withHandler: [EWSSingleRecipientType class]];

    [handler property   : @"toRecipients"
             isRequired : FALSE
             withXmlTag : @"ToRecipients"
             withHandler: [EWSArrayOfRecipientsType class]];

    [handler property   : @"ccRecipients"
             isRequired : FALSE
             withXmlTag : @"CcRecipients"
             withHandler: [EWSArrayOfRecipientsType class]];

    [handler property   : @"bccRecipients"
             isRequired : FALSE
             withXmlTag : @"BccRecipients"
             withHandler: [EWSArrayOfRecipientsType class]];

    [handler property   : @"isReadReceiptRequested"
             isRequired : FALSE
             withXmlTag : @"IsReadReceiptRequested"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isDeliveryReceiptRequested"
             isRequired : FALSE
             withXmlTag : @"IsDeliveryReceiptRequested"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"conversationIndex"
             isRequired : FALSE
             withXmlTag : @"ConversationIndex"
             withHandler: [EWSBase64BinaryTypeHandler class]];

    [handler property   : @"conversationTopic"
             isRequired : FALSE
             withXmlTag : @"ConversationTopic"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"from"
             isRequired : FALSE
             withXmlTag : @"From"
             withHandler: [EWSSingleRecipientType class]];

    [handler property   : @"internetMessageId"
             isRequired : FALSE
             withXmlTag : @"InternetMessageId"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"isRead"
             isRequired : FALSE
             withXmlTag : @"IsRead"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isResponseRequested"
             isRequired : FALSE
             withXmlTag : @"IsResponseRequested"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"references"
             isRequired : FALSE
             withXmlTag : @"References"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"replyTo"
             isRequired : FALSE
             withXmlTag : @"ReplyTo"
             withHandler: [EWSArrayOfRecipientsType class]];

    [handler property   : @"receivedBy"
             isRequired : FALSE
             withXmlTag : @"ReceivedBy"
             withHandler: [EWSSingleRecipientType class]];

    [handler property   : @"receivedRepresenting"
             isRequired : FALSE
             withXmlTag : @"ReceivedRepresenting"
             withHandler: [EWSSingleRecipientType class]];

    [handler property   : @"referenceItemId"
             isRequired : FALSE
             withXmlTag : @"ReferenceItemId"
             withHandler: [EWSItemIdType class]];

    [handler property   : @"pNewBodyContent"
             isRequired : FALSE
             withXmlTag : @"NewBodyContent"
             withHandler: [EWSBodyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSReplyAllToItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ReplyAllToItemType: super=%@", [super description]];
}

@end

