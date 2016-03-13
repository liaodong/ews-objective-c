#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPostItemType.h"


@implementation EWSPostItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPostItemType class]];

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

    [handler property   : @"postedTime"
             isRequired : FALSE
             withXmlTag : @"PostedTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"references"
             isRequired : FALSE
             withXmlTag : @"References"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"sender"
             isRequired : FALSE
             withXmlTag : @"Sender"
             withHandler: [EWSSingleRecipientType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPostItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PostItemType: ConversationIndex=%@ ConversationTopic=%@ From=%@ InternetMessageId=%@ IsRead=%@ PostedTime=%@ References=%@ Sender=%@ super=%@", _conversationIndex, _conversationTopic, _from, _internetMessageId, _isRead, _postedTime, _references, _sender, [super description]];
}

@end

