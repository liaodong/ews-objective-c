#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSCalendarItemType.h"


@implementation EWSCalendarItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarItemType class]];

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

    [handler property   : @"uID"
             isRequired : FALSE
             withXmlTag : @"UID"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"recurrenceId"
             isRequired : FALSE
             withXmlTag : @"RecurrenceId"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"dateTimeStamp"
             isRequired : FALSE
             withXmlTag : @"DateTimeStamp"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"start"
             isRequired : FALSE
             withXmlTag : @"Start"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"end"
             isRequired : FALSE
             withXmlTag : @"End"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"originalStart"
             isRequired : FALSE
             withXmlTag : @"OriginalStart"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"isAllDayEvent"
             isRequired : FALSE
             withXmlTag : @"IsAllDayEvent"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"legacyFreeBusyStatus"
             isRequired : FALSE
             withXmlTag : @"LegacyFreeBusyStatus"
             withHandler: [EWSLegacyFreeBusyType class]];

    [handler property   : @"location"
             isRequired : FALSE
             withXmlTag : @"Location"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"when"
             isRequired : FALSE
             withXmlTag : @"When"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"isMeeting"
             isRequired : FALSE
             withXmlTag : @"IsMeeting"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isCancelled"
             isRequired : FALSE
             withXmlTag : @"IsCancelled"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isRecurring"
             isRequired : FALSE
             withXmlTag : @"IsRecurring"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"meetingRequestWasSent"
             isRequired : FALSE
             withXmlTag : @"MeetingRequestWasSent"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isResponseRequested"
             isRequired : FALSE
             withXmlTag : @"IsResponseRequested"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"calendarItemType"
             isRequired : FALSE
             withXmlTag : @"CalendarItemType"
             withHandler: [EWSCalendarItemTypeType class]];

    [handler property   : @"myResponseType"
             isRequired : FALSE
             withXmlTag : @"MyResponseType"
             withHandler: [EWSResponseTypeType class]];

    [handler property   : @"organizer"
             isRequired : FALSE
             withXmlTag : @"Organizer"
             withHandler: [EWSSingleRecipientType class]];

    [handler property   : @"requiredAttendees"
             isRequired : FALSE
             withXmlTag : @"RequiredAttendees"
             withHandler: [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property   : @"optionalAttendees"
             isRequired : FALSE
             withXmlTag : @"OptionalAttendees"
             withHandler: [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property   : @"resources"
             isRequired : FALSE
             withXmlTag : @"Resources"
             withHandler: [EWSNonEmptyArrayOfAttendeesType class]];

    [handler property   : @"conflictingMeetingCount"
             isRequired : FALSE
             withXmlTag : @"ConflictingMeetingCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"adjacentMeetingCount"
             isRequired : FALSE
             withXmlTag : @"AdjacentMeetingCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"conflictingMeetings"
             isRequired : FALSE
             withXmlTag : @"ConflictingMeetings"
             withHandler: [EWSNonEmptyArrayOfAllItemsType class]];

    [handler property   : @"adjacentMeetings"
             isRequired : FALSE
             withXmlTag : @"AdjacentMeetings"
             withHandler: [EWSNonEmptyArrayOfAllItemsType class]];

    [handler property   : @"duration"
             isRequired : FALSE
             withXmlTag : @"Duration"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"timeZone"
             isRequired : FALSE
             withXmlTag : @"TimeZone"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"appointmentReplyTime"
             isRequired : FALSE
             withXmlTag : @"AppointmentReplyTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"appointmentSequenceNumber"
             isRequired : FALSE
             withXmlTag : @"AppointmentSequenceNumber"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"appointmentState"
             isRequired : FALSE
             withXmlTag : @"AppointmentState"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"recurrence"
             isRequired : FALSE
             withXmlTag : @"Recurrence"
             withHandler: [EWSRecurrenceType class]];

    [handler property   : @"firstOccurrence"
             isRequired : FALSE
             withXmlTag : @"FirstOccurrence"
             withHandler: [EWSOccurrenceInfoType class]];

    [handler property   : @"lastOccurrence"
             isRequired : FALSE
             withXmlTag : @"LastOccurrence"
             withHandler: [EWSOccurrenceInfoType class]];

    [handler property   : @"modifiedOccurrences"
             isRequired : FALSE
             withXmlTag : @"ModifiedOccurrences"
             withHandler: [EWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler property   : @"deletedOccurrences"
             isRequired : FALSE
             withXmlTag : @"DeletedOccurrences"
             withHandler: [EWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler property   : @"meetingTimeZone"
             isRequired : FALSE
             withXmlTag : @"MeetingTimeZone"
             withHandler: [EWSTimeZoneType class]];

    [handler property   : @"conferenceType"
             isRequired : FALSE
             withXmlTag : @"ConferenceType"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"allowNewTimeProposal"
             isRequired : FALSE
             withXmlTag : @"AllowNewTimeProposal"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isOnlineMeeting"
             isRequired : FALSE
             withXmlTag : @"IsOnlineMeeting"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"meetingWorkspaceUrl"
             isRequired : FALSE
             withXmlTag : @"MeetingWorkspaceUrl"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"netShowUrl"
             isRequired : FALSE
             withXmlTag : @"NetShowUrl"
             withHandler: [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarItemType: UID=%@ RecurrenceId=%@ DateTimeStamp=%@ Start=%@ End=%@ OriginalStart=%@ IsAllDayEvent=%@ LegacyFreeBusyStatus=%@ Location=%@ When=%@ IsMeeting=%@ IsCancelled=%@ IsRecurring=%@ MeetingRequestWasSent=%@ IsResponseRequested=%@ CalendarItemType=%@ MyResponseType=%@ Organizer=%@ RequiredAttendees=%@ OptionalAttendees=%@ Resources=%@ ConflictingMeetingCount=%@ AdjacentMeetingCount=%@ ConflictingMeetings=%@ AdjacentMeetings=%@ Duration=%@ TimeZone=%@ AppointmentReplyTime=%@ AppointmentSequenceNumber=%@ AppointmentState=%@ Recurrence=%@ FirstOccurrence=%@ LastOccurrence=%@ ModifiedOccurrences=%@ DeletedOccurrences=%@ MeetingTimeZone=%@ ConferenceType=%@ AllowNewTimeProposal=%@ IsOnlineMeeting=%@ MeetingWorkspaceUrl=%@ NetShowUrl=%@ super=%@", _uID, _recurrenceId, _dateTimeStamp, _start, _end, _originalStart, _isAllDayEvent, _legacyFreeBusyStatus, _location, _when, _isMeeting, _isCancelled, _isRecurring, _meetingRequestWasSent, _isResponseRequested, _calendarItemType, _myResponseType, _organizer, _requiredAttendees, _optionalAttendees, _resources, _conflictingMeetingCount, _adjacentMeetingCount, _conflictingMeetings, _adjacentMeetings, _duration, _timeZone, _appointmentReplyTime, _appointmentSequenceNumber, _appointmentState, _recurrence, _firstOccurrence, _lastOccurrence, _modifiedOccurrences, _deletedOccurrences, _meetingTimeZone, _conferenceType, _allowNewTimeProposal, _isOnlineMeeting, _meetingWorkspaceUrl, _netShowUrl, [super description]];
}

@end

