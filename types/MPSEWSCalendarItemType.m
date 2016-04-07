#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarItemType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
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
#import "../types/MPSEWSTimeZoneDefinitionType.h"
#import "../types/MPSEWSTimeZoneType.h"


@implementation MPSEWSCalendarItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarItemType class]];

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

    [handler property      : @"uID"
             withNamespace : 't'
             withXmlTag    : @"UID"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"recurrenceId"
             withNamespace : 't'
             withXmlTag    : @"RecurrenceId"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeStamp"
             withNamespace : 't'
             withXmlTag    : @"DateTimeStamp"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"start"
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"end"
             withNamespace : 't'
             withXmlTag    : @"End"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"originalStart"
             withNamespace : 't'
             withXmlTag    : @"OriginalStart"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isAllDayEvent"
             withNamespace : 't'
             withXmlTag    : @"IsAllDayEvent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"legacyFreeBusyStatus"
             withNamespace : 't'
             withXmlTag    : @"LegacyFreeBusyStatus"
             withHandler   : [MPSEWSLegacyFreeBusyType class]];

    [handler property      : @"location"
             withNamespace : 't'
             withXmlTag    : @"Location"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"when"
             withNamespace : 't'
             withXmlTag    : @"When"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isMeeting"
             withNamespace : 't'
             withXmlTag    : @"IsMeeting"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isCancelled"
             withNamespace : 't'
             withXmlTag    : @"IsCancelled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"meetingRequestWasSent"
             withNamespace : 't'
             withXmlTag    : @"MeetingRequestWasSent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResponseRequested"
             withNamespace : 't'
             withXmlTag    : @"IsResponseRequested"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"calendarItemType"
             withNamespace : 't'
             withXmlTag    : @"CalendarItemType"
             withHandler   : [MPSEWSCalendarItemTypeType class]];

    [handler property      : @"myResponseType"
             withNamespace : 't'
             withXmlTag    : @"MyResponseType"
             withHandler   : [MPSEWSResponseTypeType class]];

    [handler property      : @"organizer"
             withNamespace : 't'
             withXmlTag    : @"Organizer"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"requiredAttendees"
             withNamespace : 't'
             withXmlTag    : @"RequiredAttendees"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"optionalAttendees"
             withNamespace : 't'
             withXmlTag    : @"OptionalAttendees"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"resources"
             withNamespace : 't'
             withXmlTag    : @"Resources"
             withHandler   : [MPSEWSNonEmptyArrayOfAttendeesType class]];

    [handler property      : @"conflictingMeetingCount"
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetingCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"adjacentMeetingCount"
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetingCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"conflictingMeetings"
             withNamespace : 't'
             withXmlTag    : @"ConflictingMeetings"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"adjacentMeetings"
             withNamespace : 't'
             withXmlTag    : @"AdjacentMeetings"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler property      : @"duration"
             withNamespace : 't'
             withXmlTag    : @"Duration"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"timeZone"
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"appointmentReplyTime"
             withNamespace : 't'
             withXmlTag    : @"AppointmentReplyTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"appointmentSequenceNumber"
             withNamespace : 't'
             withXmlTag    : @"AppointmentSequenceNumber"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"appointmentState"
             withNamespace : 't'
             withXmlTag    : @"AppointmentState"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"recurrence"
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [MPSEWSRecurrenceType class]];

    [handler property      : @"firstOccurrence"
             withNamespace : 't'
             withXmlTag    : @"FirstOccurrence"
             withHandler   : [MPSEWSOccurrenceInfoType class]];

    [handler property      : @"lastOccurrence"
             withNamespace : 't'
             withXmlTag    : @"LastOccurrence"
             withHandler   : [MPSEWSOccurrenceInfoType class]];

    [handler property      : @"modifiedOccurrences"
             withNamespace : 't'
             withXmlTag    : @"ModifiedOccurrences"
             withHandler   : [MPSEWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler property      : @"deletedOccurrences"
             withNamespace : 't'
             withXmlTag    : @"DeletedOccurrences"
             withHandler   : [MPSEWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler property      : @"meetingTimeZone"
             withNamespace : 't'
             withXmlTag    : @"MeetingTimeZone"
             withHandler   : [MPSEWSTimeZoneType class]];

    [handler property      : @"startTimeZone"
             withNamespace : 't'
             withXmlTag    : @"StartTimeZone"
             withHandler   : [MPSEWSTimeZoneDefinitionType class]];

    [handler property      : @"endTimeZone"
             withNamespace : 't'
             withXmlTag    : @"EndTimeZone"
             withHandler   : [MPSEWSTimeZoneDefinitionType class]];

    [handler property      : @"conferenceType"
             withNamespace : 't'
             withXmlTag    : @"ConferenceType"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"allowNewTimeProposal"
             withNamespace : 't'
             withXmlTag    : @"AllowNewTimeProposal"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isOnlineMeeting"
             withNamespace : 't'
             withXmlTag    : @"IsOnlineMeeting"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"meetingWorkspaceUrl"
             withNamespace : 't'
             withXmlTag    : @"MeetingWorkspaceUrl"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"netShowUrl"
             withNamespace : 't'
             withXmlTag    : @"NetShowUrl"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCalendarItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSItemType isValid:val forVersion:ver]) return FALSE;
    if ([val uID ] && ![MPSEWSStringTypeHandler isValid:[val uID ] forVersion:ver]) return FALSE;
    if ([val recurrenceId] && ![MPSEWSDateTimeTypeHandler isValid:[val recurrenceId] forVersion:ver]) return FALSE;
    if ([val dateTimeStamp] && ![MPSEWSDateTimeTypeHandler isValid:[val dateTimeStamp] forVersion:ver]) return FALSE;
    if ([val start] && ![MPSEWSDateTimeTypeHandler isValid:[val start] forVersion:ver]) return FALSE;
    if ([val end ] && ![MPSEWSDateTimeTypeHandler isValid:[val end ] forVersion:ver]) return FALSE;
    if ([val originalStart] && ![MPSEWSDateTimeTypeHandler isValid:[val originalStart] forVersion:ver]) return FALSE;
    if ([val isAllDayEvent] && ![MPSEWSBooleanTypeHandler isValid:[val isAllDayEvent] forVersion:ver]) return FALSE;
    if ([val legacyFreeBusyStatus] && ![MPSEWSLegacyFreeBusyType isValid:[val legacyFreeBusyStatus] forVersion:ver]) return FALSE;
    if ([val location] && ![MPSEWSStringTypeHandler isValid:[val location] forVersion:ver]) return FALSE;
    if ([val when] && ![MPSEWSStringTypeHandler isValid:[val when] forVersion:ver]) return FALSE;
    if ([val isMeeting] && ![MPSEWSBooleanTypeHandler isValid:[val isMeeting] forVersion:ver]) return FALSE;
    if ([val isCancelled] && ![MPSEWSBooleanTypeHandler isValid:[val isCancelled] forVersion:ver]) return FALSE;
    if ([val isRecurring] && ![MPSEWSBooleanTypeHandler isValid:[val isRecurring] forVersion:ver]) return FALSE;
    if ([val meetingRequestWasSent] && ![MPSEWSBooleanTypeHandler isValid:[val meetingRequestWasSent] forVersion:ver]) return FALSE;
    if ([val isResponseRequested] && ![MPSEWSBooleanTypeHandler isValid:[val isResponseRequested] forVersion:ver]) return FALSE;
    if ([val calendarItemType] && ![MPSEWSCalendarItemTypeType isValid:[val calendarItemType] forVersion:ver]) return FALSE;
    if ([val myResponseType] && ![MPSEWSResponseTypeType isValid:[val myResponseType] forVersion:ver]) return FALSE;
    if ([val organizer] && ![MPSEWSSingleRecipientType isValid:[val organizer] forVersion:ver]) return FALSE;
    if ([val requiredAttendees] && ![MPSEWSNonEmptyArrayOfAttendeesType isValid:[val requiredAttendees] forVersion:ver]) return FALSE;
    if ([val optionalAttendees] && ![MPSEWSNonEmptyArrayOfAttendeesType isValid:[val optionalAttendees] forVersion:ver]) return FALSE;
    if ([val resources] && ![MPSEWSNonEmptyArrayOfAttendeesType isValid:[val resources] forVersion:ver]) return FALSE;
    if ([val conflictingMeetingCount] && ![MPSEWSIntegerTypeHandler isValid:[val conflictingMeetingCount] forVersion:ver]) return FALSE;
    if ([val adjacentMeetingCount] && ![MPSEWSIntegerTypeHandler isValid:[val adjacentMeetingCount] forVersion:ver]) return FALSE;
    if ([val conflictingMeetings] && ![MPSEWSNonEmptyArrayOfAllItemsType isValid:[val conflictingMeetings] forVersion:ver]) return FALSE;
    if ([val adjacentMeetings] && ![MPSEWSNonEmptyArrayOfAllItemsType isValid:[val adjacentMeetings] forVersion:ver]) return FALSE;
    if ([val duration] && ![MPSEWSStringTypeHandler isValid:[val duration] forVersion:ver]) return FALSE;
    if ([val timeZone] && ![MPSEWSStringTypeHandler isValid:[val timeZone] forVersion:ver]) return FALSE;
    if ([val appointmentReplyTime] && ![MPSEWSDateTimeTypeHandler isValid:[val appointmentReplyTime] forVersion:ver]) return FALSE;
    if ([val appointmentSequenceNumber] && ![MPSEWSIntegerTypeHandler isValid:[val appointmentSequenceNumber] forVersion:ver]) return FALSE;
    if ([val appointmentState] && ![MPSEWSIntegerTypeHandler isValid:[val appointmentState] forVersion:ver]) return FALSE;
    if ([val recurrence] && ![MPSEWSRecurrenceType isValid:[val recurrence] forVersion:ver]) return FALSE;
    if ([val firstOccurrence] && ![MPSEWSOccurrenceInfoType isValid:[val firstOccurrence] forVersion:ver]) return FALSE;
    if ([val lastOccurrence] && ![MPSEWSOccurrenceInfoType isValid:[val lastOccurrence] forVersion:ver]) return FALSE;
    if ([val modifiedOccurrences] && ![MPSEWSNonEmptyArrayOfOccurrenceInfoType isValid:[val modifiedOccurrences] forVersion:ver]) return FALSE;
    if ([val deletedOccurrences] && ![MPSEWSNonEmptyArrayOfDeletedOccurrencesType isValid:[val deletedOccurrences] forVersion:ver]) return FALSE;
    if ([val meetingTimeZone] && ![MPSEWSTimeZoneType isValid:[val meetingTimeZone] forVersion:ver]) return FALSE;
    if ([val startTimeZone] && ![MPSEWSTimeZoneDefinitionType isValid:[val startTimeZone] forVersion:ver]) return FALSE;
    if ([val endTimeZone] && ![MPSEWSTimeZoneDefinitionType isValid:[val endTimeZone] forVersion:ver]) return FALSE;
    if ([val conferenceType] && ![MPSEWSIntegerTypeHandler isValid:[val conferenceType] forVersion:ver]) return FALSE;
    if ([val allowNewTimeProposal] && ![MPSEWSBooleanTypeHandler isValid:[val allowNewTimeProposal] forVersion:ver]) return FALSE;
    if ([val isOnlineMeeting] && ![MPSEWSBooleanTypeHandler isValid:[val isOnlineMeeting] forVersion:ver]) return FALSE;
    if ([val meetingWorkspaceUrl] && ![MPSEWSStringTypeHandler isValid:[val meetingWorkspaceUrl] forVersion:ver]) return FALSE;
    if ([val netShowUrl] && ![MPSEWSStringTypeHandler isValid:[val netShowUrl] forVersion:ver]) return FALSE;
    return TRUE;
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
    return [NSString stringWithFormat:@"CalendarItemType: UID=%@ RecurrenceId=%@ DateTimeStamp=%@ Start=%@ End=%@ OriginalStart=%@ IsAllDayEvent=%@ LegacyFreeBusyStatus=%@ Location=%@ When=%@ IsMeeting=%@ IsCancelled=%@ IsRecurring=%@ MeetingRequestWasSent=%@ IsResponseRequested=%@ CalendarItemType=%@ MyResponseType=%@ Organizer=%@ RequiredAttendees=%@ OptionalAttendees=%@ Resources=%@ ConflictingMeetingCount=%@ AdjacentMeetingCount=%@ ConflictingMeetings=%@ AdjacentMeetings=%@ Duration=%@ TimeZone=%@ AppointmentReplyTime=%@ AppointmentSequenceNumber=%@ AppointmentState=%@ Recurrence=%@ FirstOccurrence=%@ LastOccurrence=%@ ModifiedOccurrences=%@ DeletedOccurrences=%@ MeetingTimeZone=%@ StartTimeZone=%@ EndTimeZone=%@ ConferenceType=%@ AllowNewTimeProposal=%@ IsOnlineMeeting=%@ MeetingWorkspaceUrl=%@ NetShowUrl=%@ super=%@", _uID, _recurrenceId, _dateTimeStamp, _start, _end, _originalStart, _isAllDayEvent, _legacyFreeBusyStatus, _location, _when, _isMeeting, _isCancelled, _isRecurring, _meetingRequestWasSent, _isResponseRequested, _calendarItemType, _myResponseType, _organizer, _requiredAttendees, _optionalAttendees, _resources, _conflictingMeetingCount, _adjacentMeetingCount, _conflictingMeetings, _adjacentMeetings, _duration, _timeZone, _appointmentReplyTime, _appointmentSequenceNumber, _appointmentState, _recurrence, _firstOccurrence, _lastOccurrence, _modifiedOccurrences, _deletedOccurrences, _meetingTimeZone, _startTimeZone, _endTimeZone, _conferenceType, _allowNewTimeProposal, _isOnlineMeeting, _meetingWorkspaceUrl, _netShowUrl, [super description]];
}

@end

