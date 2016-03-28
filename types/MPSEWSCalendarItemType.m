#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarItemType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSBodyType.h"
#import "../types/MPSEWSCalendarItemTypeType.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemClassType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSLegacyFreeBusyType.h"
#import "../types/MPSEWSMimeContentType.h"
#import "../types/MPSEWSNonEmptyArrayOfAllItemsType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttendeesType.h"
#import "../types/MPSEWSNonEmptyArrayOfDeletedOccurrencesType.h"
#import "../types/MPSEWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/MPSEWSNonEmptyArrayOfOccurrenceInfoType.h"
#import "../types/MPSEWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/MPSEWSOccurrenceInfoType.h"
#import "../types/MPSEWSRecurrenceType.h"
#import "../types/MPSEWSReminderMinutesBeforeStartType.h"
#import "../types/MPSEWSResponseTypeType.h"
#import "../types/MPSEWSSensitivityChoicesType.h"
#import "../types/MPSEWSSingleRecipientType.h"
#import "../types/MPSEWSTimeZoneType.h"


@implementation MPSEWSCalendarItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarItemType class]];

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

    [handler property      : @"uID"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UID"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"recurrenceId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RecurrenceId"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeStamp"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeStamp"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"start"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"end"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"End"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"originalStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OriginalStart"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isAllDayEvent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsAllDayEvent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"legacyFreeBusyStatus"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LegacyFreeBusyStatus"
             withHandler   : [MPSEWSLegacyFreeBusyType class]];

    [handler property      : @"location"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Location"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"when"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"When"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isMeeting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsMeeting"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isCancelled"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsCancelled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"meetingRequestWasSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingRequestWasSent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResponseRequested"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResponseRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"calendarItemType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarItemType"
             withHandler   : [MPSEWSCalendarItemTypeType class]];

    [handler property      : @"myResponseType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MyResponseType"
             withHandler   : [MPSEWSResponseTypeType class]];

    [handler property      : @"organizer"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Organizer"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"requiredAttendees"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RequiredAttendees"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"optionalAttendees"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OptionalAttendees"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"resources"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Resources"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"conflictingMeetingCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetingCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"adjacentMeetingCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetingCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"conflictingMeetings"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetings"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"adjacentMeetings"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetings"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"duration"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Duration"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"timeZone"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"appointmentReplyTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentReplyTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"appointmentSequenceNumber"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentSequenceNumber"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"appointmentState"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AppointmentState"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"recurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [MPSEWSRecurrenceType class]];

    [handler property      : @"firstOccurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FirstOccurrence"
             withHandler   : [MPSEWSOccurrenceInfoType class]];

    [handler property      : @"lastOccurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastOccurrence"
             withHandler   : [MPSEWSOccurrenceInfoType class]];

    [handler property      : @"modifiedOccurrences"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ModifiedOccurrences"
             withHandler   : [MPSEWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler property      : @"deletedOccurrences"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DeletedOccurrences"
             withHandler   : [MPSEWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler property      : @"meetingTimeZone"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingTimeZone"
             withHandler   : [MPSEWSTimeZoneType class]];

    [handler property      : @"conferenceType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ConferenceType"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"allowNewTimeProposal"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AllowNewTimeProposal"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isOnlineMeeting"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsOnlineMeeting"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"meetingWorkspaceUrl"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingWorkspaceUrl"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"netShowUrl"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"NetShowUrl"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarItemType: UID=%@ RecurrenceId=%@ DateTimeStamp=%@ Start=%@ End=%@ OriginalStart=%@ IsAllDayEvent=%@ LegacyFreeBusyStatus=%@ Location=%@ When=%@ IsMeeting=%@ IsCancelled=%@ IsRecurring=%@ MeetingRequestWasSent=%@ IsResponseRequested=%@ CalendarItemType=%@ MyResponseType=%@ Organizer=%@ RequiredAttendees=%@ OptionalAttendees=%@ Resources=%@ ConflictingMeetingCount=%@ AdjacentMeetingCount=%@ ConflictingMeetings=%@ AdjacentMeetings=%@ Duration=%@ TimeZone=%@ AppointmentReplyTime=%@ AppointmentSequenceNumber=%@ AppointmentState=%@ Recurrence=%@ FirstOccurrence=%@ LastOccurrence=%@ ModifiedOccurrences=%@ DeletedOccurrences=%@ MeetingTimeZone=%@ ConferenceType=%@ AllowNewTimeProposal=%@ IsOnlineMeeting=%@ MeetingWorkspaceUrl=%@ NetShowUrl=%@ super=%@", _uID, _recurrenceId, _dateTimeStamp, _start, _end, _originalStart, _isAllDayEvent, _legacyFreeBusyStatus, _location, _when, _isMeeting, _isCancelled, _isRecurring, _meetingRequestWasSent, _isResponseRequested, _calendarItemType, _myResponseType, _organizer, _requiredAttendees, _optionalAttendees, _resources, _conflictingMeetingCount, _adjacentMeetingCount, _conflictingMeetings, _adjacentMeetings, _duration, _timeZone, _appointmentReplyTime, _appointmentSequenceNumber, _appointmentState, _recurrence, _firstOccurrence, _lastOccurrence, _modifiedOccurrences, _deletedOccurrences, _meetingTimeZone, _conferenceType, _allowNewTimeProposal, _isOnlineMeeting, _meetingWorkspaceUrl, _netShowUrl, [super description]];
}

@end

