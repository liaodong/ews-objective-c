#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMeetingRequestMessageType.h"


@implementation EWSMeetingRequestMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMeetingRequestMessageType class]];

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

    [handler property      : @"associatedCalendarItemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AssociatedCalendarItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"isDelegated"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDelegated"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isOutOfDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsOutOfDate"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"hasBeenProcessed"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasBeenProcessed"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"responseType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseType"
             withHandler   : [EWSResponseTypeType class]];

    [handler property      : @"uID"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UID"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"recurrenceId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RecurrenceId"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeStamp"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeStamp"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"meetingRequestType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingRequestType"
             withHandler   : [EWSMeetingRequestTypeType class]];

    [handler property      : @"intendedFreeBusyStatus"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IntendedFreeBusyStatus"
             withHandler   : [EWSLegacyFreeBusyType class]];

    [handler property      : @"start"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"end"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"End"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"originalStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OriginalStart"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"isAllDayEvent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsAllDayEvent"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"legacyFreeBusyStatus"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LegacyFreeBusyStatus"
             withHandler   : [EWSLegacyFreeBusyType class]];

    [handler property      : @"location"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Location"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"when"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"When"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"isMeeting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsMeeting"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isCancelled"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsCancelled"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"meetingRequestWasSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingRequestWasSent"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"calendarItemType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarItemType"
             withHandler   : [EWSCalendarItemTypeType class]];

    [handler property      : @"myResponseType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MyResponseType"
             withHandler   : [EWSResponseTypeType class]];

    [handler property      : @"organizer"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Organizer"
             withHandler   : [EWSSingleRecipientType class]];

    [handler property      : @"requiredAttendees"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RequiredAttendees"
             withHandler   : [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"optionalAttendees"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OptionalAttendees"
             withHandler   : [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"resources"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Resources"
             withHandler   : [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"conflictingMeetingCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetingCount"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"adjacentMeetingCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetingCount"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"conflictingMeetings"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetings"
             withHandler   : [EWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"adjacentMeetings"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetings"
             withHandler   : [EWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"duration"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Duration"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"timeZone"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"appointmentReplyTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentReplyTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"appointmentSequenceNumber"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentSequenceNumber"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"appointmentState"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentState"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"recurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [EWSRecurrenceType class]];

    [handler property      : @"firstOccurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FirstOccurrence"
             withHandler   : [EWSOccurrenceInfoType class]];

    [handler property      : @"lastOccurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastOccurrence"
             withHandler   : [EWSOccurrenceInfoType class]];

    [handler property      : @"modifiedOccurrences"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ModifiedOccurrences"
             withHandler   : [EWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler property      : @"deletedOccurrences"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DeletedOccurrences"
             withHandler   : [EWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler property      : @"meetingTimeZone"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingTimeZone"
             withHandler   : [EWSTimeZoneType class]];

    [handler property      : @"conferenceType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConferenceType"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"allowNewTimeProposal"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AllowNewTimeProposal"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isOnlineMeeting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsOnlineMeeting"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"meetingWorkspaceUrl"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingWorkspaceUrl"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"netShowUrl"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"NetShowUrl"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMeetingRequestMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MeetingRequestMessageType: MeetingRequestType=%@ IntendedFreeBusyStatus=%@ Start=%@ End=%@ OriginalStart=%@ IsAllDayEvent=%@ LegacyFreeBusyStatus=%@ Location=%@ When=%@ IsMeeting=%@ IsCancelled=%@ IsRecurring=%@ MeetingRequestWasSent=%@ CalendarItemType=%@ MyResponseType=%@ Organizer=%@ RequiredAttendees=%@ OptionalAttendees=%@ Resources=%@ ConflictingMeetingCount=%@ AdjacentMeetingCount=%@ ConflictingMeetings=%@ AdjacentMeetings=%@ Duration=%@ TimeZone=%@ AppointmentReplyTime=%@ AppointmentSequenceNumber=%@ AppointmentState=%@ Recurrence=%@ FirstOccurrence=%@ LastOccurrence=%@ ModifiedOccurrences=%@ DeletedOccurrences=%@ MeetingTimeZone=%@ ConferenceType=%@ AllowNewTimeProposal=%@ IsOnlineMeeting=%@ MeetingWorkspaceUrl=%@ NetShowUrl=%@ super=%@", _meetingRequestType, _intendedFreeBusyStatus, _start, _end, _originalStart, _isAllDayEvent, _legacyFreeBusyStatus, _location, _when, _isMeeting, _isCancelled, _isRecurring, _meetingRequestWasSent, _calendarItemType, _myResponseType, _organizer, _requiredAttendees, _optionalAttendees, _resources, _conflictingMeetingCount, _adjacentMeetingCount, _conflictingMeetings, _adjacentMeetings, _duration, _timeZone, _appointmentReplyTime, _appointmentSequenceNumber, _appointmentState, _recurrence, _firstOccurrence, _lastOccurrence, _modifiedOccurrences, _deletedOccurrences, _meetingTimeZone, _conferenceType, _allowNewTimeProposal, _isOnlineMeeting, _meetingWorkspaceUrl, _netShowUrl, [super description]];
}

@end

