#import <Foundation/Foundation.h>

#import "MPSEWSUnindexedFieldURIType.h"
@implementation MPSEWSUnindexedFieldURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSUnindexedFieldURIType folder_FolderId], 
                                         [MPSEWSUnindexedFieldURIType folder_ParentFolderId], 
                                         [MPSEWSUnindexedFieldURIType folder_DisplayName], 
                                         [MPSEWSUnindexedFieldURIType folder_UnreadCount], 
                                         [MPSEWSUnindexedFieldURIType folder_TotalCount], 
                                         [MPSEWSUnindexedFieldURIType folder_ChildFolderCount], 
                                         [MPSEWSUnindexedFieldURIType folder_FolderClass], 
                                         [MPSEWSUnindexedFieldURIType folder_SearchParameters], 
                                         [MPSEWSUnindexedFieldURIType folder_ManagedFolderInformation], 
                                         [MPSEWSUnindexedFieldURIType folder_PermissionSet], 
                                         [MPSEWSUnindexedFieldURIType folder_EffectiveRights], 
                                         [MPSEWSUnindexedFieldURIType folder_SharingEffectiveRights], 
                                         [MPSEWSUnindexedFieldURIType item_ItemId], 
                                         [MPSEWSUnindexedFieldURIType item_ParentFolderId], 
                                         [MPSEWSUnindexedFieldURIType item_ItemClass], 
                                         [MPSEWSUnindexedFieldURIType item_MimeContent], 
                                         [MPSEWSUnindexedFieldURIType item_Attachments], 
                                         [MPSEWSUnindexedFieldURIType item_Subject], 
                                         [MPSEWSUnindexedFieldURIType item_DateTimeReceived], 
                                         [MPSEWSUnindexedFieldURIType item_Size], 
                                         [MPSEWSUnindexedFieldURIType item_Categories], 
                                         [MPSEWSUnindexedFieldURIType item_HasAttachments], 
                                         [MPSEWSUnindexedFieldURIType item_Importance], 
                                         [MPSEWSUnindexedFieldURIType item_InReplyTo], 
                                         [MPSEWSUnindexedFieldURIType item_InternetMessageHeaders], 
                                         [MPSEWSUnindexedFieldURIType item_IsAssociated], 
                                         [MPSEWSUnindexedFieldURIType item_IsDraft], 
                                         [MPSEWSUnindexedFieldURIType item_IsFromMe], 
                                         [MPSEWSUnindexedFieldURIType item_IsResend], 
                                         [MPSEWSUnindexedFieldURIType item_IsSubmitted], 
                                         [MPSEWSUnindexedFieldURIType item_IsUnmodified], 
                                         [MPSEWSUnindexedFieldURIType item_DateTimeSent], 
                                         [MPSEWSUnindexedFieldURIType item_DateTimeCreated], 
                                         [MPSEWSUnindexedFieldURIType item_Body], 
                                         [MPSEWSUnindexedFieldURIType item_ResponseObjects], 
                                         [MPSEWSUnindexedFieldURIType item_Sensitivity], 
                                         [MPSEWSUnindexedFieldURIType item_ReminderDueBy], 
                                         [MPSEWSUnindexedFieldURIType item_ReminderIsSet], 
                                         [MPSEWSUnindexedFieldURIType item_ReminderMinutesBeforeStart], 
                                         [MPSEWSUnindexedFieldURIType item_DisplayTo], 
                                         [MPSEWSUnindexedFieldURIType item_DisplayCc], 
                                         [MPSEWSUnindexedFieldURIType item_Culture], 
                                         [MPSEWSUnindexedFieldURIType item_EffectiveRights], 
                                         [MPSEWSUnindexedFieldURIType item_LastModifiedName], 
                                         [MPSEWSUnindexedFieldURIType item_LastModifiedTime], 
                                         [MPSEWSUnindexedFieldURIType item_ConversationId], 
                                         [MPSEWSUnindexedFieldURIType item_UniqueBody], 
                                         [MPSEWSUnindexedFieldURIType item_StoreEntryId], 
                                         [MPSEWSUnindexedFieldURIType item_WebClientReadFormQueryString], 
                                         [MPSEWSUnindexedFieldURIType item_WebClientEditFormQueryString], 
                                         [MPSEWSUnindexedFieldURIType message_ConversationIndex], 
                                         [MPSEWSUnindexedFieldURIType message_ConversationTopic], 
                                         [MPSEWSUnindexedFieldURIType message_InternetMessageId], 
                                         [MPSEWSUnindexedFieldURIType message_IsRead], 
                                         [MPSEWSUnindexedFieldURIType message_IsResponseRequested], 
                                         [MPSEWSUnindexedFieldURIType message_IsReadReceiptRequested], 
                                         [MPSEWSUnindexedFieldURIType message_IsDeliveryReceiptRequested], 
                                         [MPSEWSUnindexedFieldURIType message_ReceivedBy], 
                                         [MPSEWSUnindexedFieldURIType message_ReceivedRepresenting], 
                                         [MPSEWSUnindexedFieldURIType message_References], 
                                         [MPSEWSUnindexedFieldURIType message_ReplyTo], 
                                         [MPSEWSUnindexedFieldURIType message_From], 
                                         [MPSEWSUnindexedFieldURIType message_Sender], 
                                         [MPSEWSUnindexedFieldURIType message_ToRecipients], 
                                         [MPSEWSUnindexedFieldURIType message_CcRecipients], 
                                         [MPSEWSUnindexedFieldURIType message_BccRecipients], 
                                         [MPSEWSUnindexedFieldURIType meeting_AssociatedCalendarItemId], 
                                         [MPSEWSUnindexedFieldURIType meeting_IsDelegated], 
                                         [MPSEWSUnindexedFieldURIType meeting_IsOutOfDate], 
                                         [MPSEWSUnindexedFieldURIType meeting_HasBeenProcessed], 
                                         [MPSEWSUnindexedFieldURIType meeting_ResponseType], 
                                         [MPSEWSUnindexedFieldURIType meetingRequest_MeetingRequestType], 
                                         [MPSEWSUnindexedFieldURIType meetingRequest_IntendedFreeBusyStatus], 
                                         [MPSEWSUnindexedFieldURIType calendar_Start], 
                                         [MPSEWSUnindexedFieldURIType calendar_End], 
                                         [MPSEWSUnindexedFieldURIType calendar_OriginalStart], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsAllDayEvent], 
                                         [MPSEWSUnindexedFieldURIType calendar_LegacyFreeBusyStatus], 
                                         [MPSEWSUnindexedFieldURIType calendar_Location], 
                                         [MPSEWSUnindexedFieldURIType calendar_When], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsMeeting], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsCancelled], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsRecurring], 
                                         [MPSEWSUnindexedFieldURIType calendar_MeetingRequestWasSent], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsResponseRequested], 
                                         [MPSEWSUnindexedFieldURIType calendar_CalendarItemType], 
                                         [MPSEWSUnindexedFieldURIType calendar_MyResponseType], 
                                         [MPSEWSUnindexedFieldURIType calendar_Organizer], 
                                         [MPSEWSUnindexedFieldURIType calendar_RequiredAttendees], 
                                         [MPSEWSUnindexedFieldURIType calendar_OptionalAttendees], 
                                         [MPSEWSUnindexedFieldURIType calendar_Resources], 
                                         [MPSEWSUnindexedFieldURIType calendar_ConflictingMeetingCount], 
                                         [MPSEWSUnindexedFieldURIType calendar_AdjacentMeetingCount], 
                                         [MPSEWSUnindexedFieldURIType calendar_ConflictingMeetings], 
                                         [MPSEWSUnindexedFieldURIType calendar_AdjacentMeetings], 
                                         [MPSEWSUnindexedFieldURIType calendar_Duration], 
                                         [MPSEWSUnindexedFieldURIType calendar_TimeZone], 
                                         [MPSEWSUnindexedFieldURIType calendar_AppointmentReplyTime], 
                                         [MPSEWSUnindexedFieldURIType calendar_AppointmentSequenceNumber], 
                                         [MPSEWSUnindexedFieldURIType calendar_AppointmentState], 
                                         [MPSEWSUnindexedFieldURIType calendar_Recurrence], 
                                         [MPSEWSUnindexedFieldURIType calendar_FirstOccurrence], 
                                         [MPSEWSUnindexedFieldURIType calendar_LastOccurrence], 
                                         [MPSEWSUnindexedFieldURIType calendar_ModifiedOccurrences], 
                                         [MPSEWSUnindexedFieldURIType calendar_DeletedOccurrences], 
                                         [MPSEWSUnindexedFieldURIType calendar_MeetingTimeZone], 
                                         [MPSEWSUnindexedFieldURIType calendar_ConferenceType], 
                                         [MPSEWSUnindexedFieldURIType calendar_AllowNewTimeProposal], 
                                         [MPSEWSUnindexedFieldURIType calendar_IsOnlineMeeting], 
                                         [MPSEWSUnindexedFieldURIType calendar_MeetingWorkspaceUrl], 
                                         [MPSEWSUnindexedFieldURIType calendar_NetShowUrl], 
                                         [MPSEWSUnindexedFieldURIType calendar_UID], 
                                         [MPSEWSUnindexedFieldURIType calendar_RecurrenceId], 
                                         [MPSEWSUnindexedFieldURIType calendar_DateTimeStamp], 
                                         [MPSEWSUnindexedFieldURIType calendar_StartTimeZone], 
                                         [MPSEWSUnindexedFieldURIType calendar_EndTimeZone], 
                                         [MPSEWSUnindexedFieldURIType task_ActualWork], 
                                         [MPSEWSUnindexedFieldURIType task_AssignedTime], 
                                         [MPSEWSUnindexedFieldURIType task_BillingInformation], 
                                         [MPSEWSUnindexedFieldURIType task_ChangeCount], 
                                         [MPSEWSUnindexedFieldURIType task_Companies], 
                                         [MPSEWSUnindexedFieldURIType task_CompleteDate], 
                                         [MPSEWSUnindexedFieldURIType task_Contacts], 
                                         [MPSEWSUnindexedFieldURIType task_DelegationState], 
                                         [MPSEWSUnindexedFieldURIType task_Delegator], 
                                         [MPSEWSUnindexedFieldURIType task_DueDate], 
                                         [MPSEWSUnindexedFieldURIType task_IsAssignmentEditable], 
                                         [MPSEWSUnindexedFieldURIType task_IsComplete], 
                                         [MPSEWSUnindexedFieldURIType task_IsRecurring], 
                                         [MPSEWSUnindexedFieldURIType task_IsTeamTask], 
                                         [MPSEWSUnindexedFieldURIType task_Mileage], 
                                         [MPSEWSUnindexedFieldURIType task_Owner], 
                                         [MPSEWSUnindexedFieldURIType task_PercentComplete], 
                                         [MPSEWSUnindexedFieldURIType task_Recurrence], 
                                         [MPSEWSUnindexedFieldURIType task_StartDate], 
                                         [MPSEWSUnindexedFieldURIType task_Status], 
                                         [MPSEWSUnindexedFieldURIType task_StatusDescription], 
                                         [MPSEWSUnindexedFieldURIType task_TotalWork], 
                                         [MPSEWSUnindexedFieldURIType contacts_Alias], 
                                         [MPSEWSUnindexedFieldURIType contacts_AssistantName], 
                                         [MPSEWSUnindexedFieldURIType contacts_Birthday], 
                                         [MPSEWSUnindexedFieldURIType contacts_BusinessHomePage], 
                                         [MPSEWSUnindexedFieldURIType contacts_Children], 
                                         [MPSEWSUnindexedFieldURIType contacts_Companies], 
                                         [MPSEWSUnindexedFieldURIType contacts_CompanyName], 
                                         [MPSEWSUnindexedFieldURIType contacts_CompleteName], 
                                         [MPSEWSUnindexedFieldURIType contacts_ContactSource], 
                                         [MPSEWSUnindexedFieldURIType contacts_Culture], 
                                         [MPSEWSUnindexedFieldURIType contacts_Department], 
                                         [MPSEWSUnindexedFieldURIType contacts_DisplayName], 
                                         [MPSEWSUnindexedFieldURIType contacts_DirectoryId], 
                                         [MPSEWSUnindexedFieldURIType contacts_DirectReports], 
                                         [MPSEWSUnindexedFieldURIType contacts_EmailAddresses], 
                                         [MPSEWSUnindexedFieldURIType contacts_FileAs], 
                                         [MPSEWSUnindexedFieldURIType contacts_FileAsMapping], 
                                         [MPSEWSUnindexedFieldURIType contacts_Generation], 
                                         [MPSEWSUnindexedFieldURIType contacts_GivenName], 
                                         [MPSEWSUnindexedFieldURIType contacts_ImAddresses], 
                                         [MPSEWSUnindexedFieldURIType contacts_Initials], 
                                         [MPSEWSUnindexedFieldURIType contacts_JobTitle], 
                                         [MPSEWSUnindexedFieldURIType contacts_Manager], 
                                         [MPSEWSUnindexedFieldURIType contacts_ManagerMailbox], 
                                         [MPSEWSUnindexedFieldURIType contacts_MiddleName], 
                                         [MPSEWSUnindexedFieldURIType contacts_Mileage], 
                                         [MPSEWSUnindexedFieldURIType contacts_MSExchangeCertificate], 
                                         [MPSEWSUnindexedFieldURIType contacts_Nickname], 
                                         [MPSEWSUnindexedFieldURIType contacts_Notes], 
                                         [MPSEWSUnindexedFieldURIType contacts_OfficeLocation], 
                                         [MPSEWSUnindexedFieldURIType contacts_PhoneNumbers], 
                                         [MPSEWSUnindexedFieldURIType contacts_PhoneticFullName], 
                                         [MPSEWSUnindexedFieldURIType contacts_PhoneticFirstName], 
                                         [MPSEWSUnindexedFieldURIType contacts_PhoneticLastName], 
                                         [MPSEWSUnindexedFieldURIType contacts_Photo], 
                                         [MPSEWSUnindexedFieldURIType contacts_PhysicalAddresses], 
                                         [MPSEWSUnindexedFieldURIType contacts_PostalAddressIndex], 
                                         [MPSEWSUnindexedFieldURIType contacts_Profession], 
                                         [MPSEWSUnindexedFieldURIType contacts_SpouseName], 
                                         [MPSEWSUnindexedFieldURIType contacts_Surname], 
                                         [MPSEWSUnindexedFieldURIType contacts_WeddingAnniversary], 
                                         [MPSEWSUnindexedFieldURIType contacts_UserSMIMECertificate], 
                                         [MPSEWSUnindexedFieldURIType contacts_HasPicture], 
                                         [MPSEWSUnindexedFieldURIType distributionlist_Members], 
                                         [MPSEWSUnindexedFieldURIType postitem_PostedTime], 
                                         [MPSEWSUnindexedFieldURIType conversation_ConversationId], 
                                         [MPSEWSUnindexedFieldURIType conversation_ConversationTopic], 
                                         [MPSEWSUnindexedFieldURIType conversation_UniqueRecipients], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalUniqueRecipients], 
                                         [MPSEWSUnindexedFieldURIType conversation_UniqueUnreadSenders], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalUniqueUnreadSenders], 
                                         [MPSEWSUnindexedFieldURIType conversation_UniqueSenders], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalUniqueSenders], 
                                         [MPSEWSUnindexedFieldURIType conversation_LastDeliveryTime], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalLastDeliveryTime], 
                                         [MPSEWSUnindexedFieldURIType conversation_Categories], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalCategories], 
                                         [MPSEWSUnindexedFieldURIType conversation_FlagStatus], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalFlagStatus], 
                                         [MPSEWSUnindexedFieldURIType conversation_HasAttachments], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalHasAttachments], 
                                         [MPSEWSUnindexedFieldURIType conversation_MessageCount], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalMessageCount], 
                                         [MPSEWSUnindexedFieldURIType conversation_UnreadCount], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalUnreadCount], 
                                         [MPSEWSUnindexedFieldURIType conversation_Size], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalSize], 
                                         [MPSEWSUnindexedFieldURIType conversation_ItemClasses], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalItemClasses], 
                                         [MPSEWSUnindexedFieldURIType conversation_Importance], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalImportance], 
                                         [MPSEWSUnindexedFieldURIType conversation_ItemIds], 
                                         [MPSEWSUnindexedFieldURIType conversation_GlobalItemIds], nil];
    [[[MPSEWSUnindexedFieldURIType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSUnindexedFieldURIType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) folder_FolderId { return @"folder:FolderId"; }
+ (NSString *) folder_ParentFolderId { return @"folder:ParentFolderId"; }
+ (NSString *) folder_DisplayName { return @"folder:DisplayName"; }
+ (NSString *) folder_UnreadCount { return @"folder:UnreadCount"; }
+ (NSString *) folder_TotalCount { return @"folder:TotalCount"; }
+ (NSString *) folder_ChildFolderCount { return @"folder:ChildFolderCount"; }
+ (NSString *) folder_FolderClass { return @"folder:FolderClass"; }
+ (NSString *) folder_SearchParameters { return @"folder:SearchParameters"; }
+ (NSString *) folder_ManagedFolderInformation { return @"folder:ManagedFolderInformation"; }
+ (NSString *) folder_PermissionSet { return @"folder:PermissionSet"; }
+ (NSString *) folder_EffectiveRights { return @"folder:EffectiveRights"; }
+ (NSString *) folder_SharingEffectiveRights { return @"folder:SharingEffectiveRights"; }
+ (NSString *) item_ItemId { return @"item:ItemId"; }
+ (NSString *) item_ParentFolderId { return @"item:ParentFolderId"; }
+ (NSString *) item_ItemClass { return @"item:ItemClass"; }
+ (NSString *) item_MimeContent { return @"item:MimeContent"; }
+ (NSString *) item_Attachments { return @"item:Attachments"; }
+ (NSString *) item_Subject { return @"item:Subject"; }
+ (NSString *) item_DateTimeReceived { return @"item:DateTimeReceived"; }
+ (NSString *) item_Size { return @"item:Size"; }
+ (NSString *) item_Categories { return @"item:Categories"; }
+ (NSString *) item_HasAttachments { return @"item:HasAttachments"; }
+ (NSString *) item_Importance { return @"item:Importance"; }
+ (NSString *) item_InReplyTo { return @"item:InReplyTo"; }
+ (NSString *) item_InternetMessageHeaders { return @"item:InternetMessageHeaders"; }
+ (NSString *) item_IsAssociated { return @"item:IsAssociated"; }
+ (NSString *) item_IsDraft { return @"item:IsDraft"; }
+ (NSString *) item_IsFromMe { return @"item:IsFromMe"; }
+ (NSString *) item_IsResend { return @"item:IsResend"; }
+ (NSString *) item_IsSubmitted { return @"item:IsSubmitted"; }
+ (NSString *) item_IsUnmodified { return @"item:IsUnmodified"; }
+ (NSString *) item_DateTimeSent { return @"item:DateTimeSent"; }
+ (NSString *) item_DateTimeCreated { return @"item:DateTimeCreated"; }
+ (NSString *) item_Body { return @"item:Body"; }
+ (NSString *) item_ResponseObjects { return @"item:ResponseObjects"; }
+ (NSString *) item_Sensitivity { return @"item:Sensitivity"; }
+ (NSString *) item_ReminderDueBy { return @"item:ReminderDueBy"; }
+ (NSString *) item_ReminderIsSet { return @"item:ReminderIsSet"; }
+ (NSString *) item_ReminderMinutesBeforeStart { return @"item:ReminderMinutesBeforeStart"; }
+ (NSString *) item_DisplayTo { return @"item:DisplayTo"; }
+ (NSString *) item_DisplayCc { return @"item:DisplayCc"; }
+ (NSString *) item_Culture { return @"item:Culture"; }
+ (NSString *) item_EffectiveRights { return @"item:EffectiveRights"; }
+ (NSString *) item_LastModifiedName { return @"item:LastModifiedName"; }
+ (NSString *) item_LastModifiedTime { return @"item:LastModifiedTime"; }
+ (NSString *) item_ConversationId { return @"item:ConversationId"; }
+ (NSString *) item_UniqueBody { return @"item:UniqueBody"; }
+ (NSString *) item_StoreEntryId { return @"item:StoreEntryId"; }
+ (NSString *) item_WebClientReadFormQueryString { return @"item:WebClientReadFormQueryString"; }
+ (NSString *) item_WebClientEditFormQueryString { return @"item:WebClientEditFormQueryString"; }
+ (NSString *) message_ConversationIndex { return @"message:ConversationIndex"; }
+ (NSString *) message_ConversationTopic { return @"message:ConversationTopic"; }
+ (NSString *) message_InternetMessageId { return @"message:InternetMessageId"; }
+ (NSString *) message_IsRead { return @"message:IsRead"; }
+ (NSString *) message_IsResponseRequested { return @"message:IsResponseRequested"; }
+ (NSString *) message_IsReadReceiptRequested { return @"message:IsReadReceiptRequested"; }
+ (NSString *) message_IsDeliveryReceiptRequested { return @"message:IsDeliveryReceiptRequested"; }
+ (NSString *) message_ReceivedBy { return @"message:ReceivedBy"; }
+ (NSString *) message_ReceivedRepresenting { return @"message:ReceivedRepresenting"; }
+ (NSString *) message_References { return @"message:References"; }
+ (NSString *) message_ReplyTo { return @"message:ReplyTo"; }
+ (NSString *) message_From { return @"message:From"; }
+ (NSString *) message_Sender { return @"message:Sender"; }
+ (NSString *) message_ToRecipients { return @"message:ToRecipients"; }
+ (NSString *) message_CcRecipients { return @"message:CcRecipients"; }
+ (NSString *) message_BccRecipients { return @"message:BccRecipients"; }
+ (NSString *) meeting_AssociatedCalendarItemId { return @"meeting:AssociatedCalendarItemId"; }
+ (NSString *) meeting_IsDelegated { return @"meeting:IsDelegated"; }
+ (NSString *) meeting_IsOutOfDate { return @"meeting:IsOutOfDate"; }
+ (NSString *) meeting_HasBeenProcessed { return @"meeting:HasBeenProcessed"; }
+ (NSString *) meeting_ResponseType { return @"meeting:ResponseType"; }
+ (NSString *) meetingRequest_MeetingRequestType { return @"meetingRequest:MeetingRequestType"; }
+ (NSString *) meetingRequest_IntendedFreeBusyStatus { return @"meetingRequest:IntendedFreeBusyStatus"; }
+ (NSString *) calendar_Start { return @"calendar:Start"; }
+ (NSString *) calendar_End { return @"calendar:End"; }
+ (NSString *) calendar_OriginalStart { return @"calendar:OriginalStart"; }
+ (NSString *) calendar_IsAllDayEvent { return @"calendar:IsAllDayEvent"; }
+ (NSString *) calendar_LegacyFreeBusyStatus { return @"calendar:LegacyFreeBusyStatus"; }
+ (NSString *) calendar_Location { return @"calendar:Location"; }
+ (NSString *) calendar_When { return @"calendar:When"; }
+ (NSString *) calendar_IsMeeting { return @"calendar:IsMeeting"; }
+ (NSString *) calendar_IsCancelled { return @"calendar:IsCancelled"; }
+ (NSString *) calendar_IsRecurring { return @"calendar:IsRecurring"; }
+ (NSString *) calendar_MeetingRequestWasSent { return @"calendar:MeetingRequestWasSent"; }
+ (NSString *) calendar_IsResponseRequested { return @"calendar:IsResponseRequested"; }
+ (NSString *) calendar_CalendarItemType { return @"calendar:CalendarItemType"; }
+ (NSString *) calendar_MyResponseType { return @"calendar:MyResponseType"; }
+ (NSString *) calendar_Organizer { return @"calendar:Organizer"; }
+ (NSString *) calendar_RequiredAttendees { return @"calendar:RequiredAttendees"; }
+ (NSString *) calendar_OptionalAttendees { return @"calendar:OptionalAttendees"; }
+ (NSString *) calendar_Resources { return @"calendar:Resources"; }
+ (NSString *) calendar_ConflictingMeetingCount { return @"calendar:ConflictingMeetingCount"; }
+ (NSString *) calendar_AdjacentMeetingCount { return @"calendar:AdjacentMeetingCount"; }
+ (NSString *) calendar_ConflictingMeetings { return @"calendar:ConflictingMeetings"; }
+ (NSString *) calendar_AdjacentMeetings { return @"calendar:AdjacentMeetings"; }
+ (NSString *) calendar_Duration { return @"calendar:Duration"; }
+ (NSString *) calendar_TimeZone { return @"calendar:TimeZone"; }
+ (NSString *) calendar_AppointmentReplyTime { return @"calendar:AppointmentReplyTime"; }
+ (NSString *) calendar_AppointmentSequenceNumber { return @"calendar:AppointmentSequenceNumber"; }
+ (NSString *) calendar_AppointmentState { return @"calendar:AppointmentState"; }
+ (NSString *) calendar_Recurrence { return @"calendar:Recurrence"; }
+ (NSString *) calendar_FirstOccurrence { return @"calendar:FirstOccurrence"; }
+ (NSString *) calendar_LastOccurrence { return @"calendar:LastOccurrence"; }
+ (NSString *) calendar_ModifiedOccurrences { return @"calendar:ModifiedOccurrences"; }
+ (NSString *) calendar_DeletedOccurrences { return @"calendar:DeletedOccurrences"; }
+ (NSString *) calendar_MeetingTimeZone { return @"calendar:MeetingTimeZone"; }
+ (NSString *) calendar_ConferenceType { return @"calendar:ConferenceType"; }
+ (NSString *) calendar_AllowNewTimeProposal { return @"calendar:AllowNewTimeProposal"; }
+ (NSString *) calendar_IsOnlineMeeting { return @"calendar:IsOnlineMeeting"; }
+ (NSString *) calendar_MeetingWorkspaceUrl { return @"calendar:MeetingWorkspaceUrl"; }
+ (NSString *) calendar_NetShowUrl { return @"calendar:NetShowUrl"; }
+ (NSString *) calendar_UID { return @"calendar:UID"; }
+ (NSString *) calendar_RecurrenceId { return @"calendar:RecurrenceId"; }
+ (NSString *) calendar_DateTimeStamp { return @"calendar:DateTimeStamp"; }
+ (NSString *) calendar_StartTimeZone { return @"calendar:StartTimeZone"; }
+ (NSString *) calendar_EndTimeZone { return @"calendar:EndTimeZone"; }
+ (NSString *) task_ActualWork { return @"task:ActualWork"; }
+ (NSString *) task_AssignedTime { return @"task:AssignedTime"; }
+ (NSString *) task_BillingInformation { return @"task:BillingInformation"; }
+ (NSString *) task_ChangeCount { return @"task:ChangeCount"; }
+ (NSString *) task_Companies { return @"task:Companies"; }
+ (NSString *) task_CompleteDate { return @"task:CompleteDate"; }
+ (NSString *) task_Contacts { return @"task:Contacts"; }
+ (NSString *) task_DelegationState { return @"task:DelegationState"; }
+ (NSString *) task_Delegator { return @"task:Delegator"; }
+ (NSString *) task_DueDate { return @"task:DueDate"; }
+ (NSString *) task_IsAssignmentEditable { return @"task:IsAssignmentEditable"; }
+ (NSString *) task_IsComplete { return @"task:IsComplete"; }
+ (NSString *) task_IsRecurring { return @"task:IsRecurring"; }
+ (NSString *) task_IsTeamTask { return @"task:IsTeamTask"; }
+ (NSString *) task_Mileage { return @"task:Mileage"; }
+ (NSString *) task_Owner { return @"task:Owner"; }
+ (NSString *) task_PercentComplete { return @"task:PercentComplete"; }
+ (NSString *) task_Recurrence { return @"task:Recurrence"; }
+ (NSString *) task_StartDate { return @"task:StartDate"; }
+ (NSString *) task_Status { return @"task:Status"; }
+ (NSString *) task_StatusDescription { return @"task:StatusDescription"; }
+ (NSString *) task_TotalWork { return @"task:TotalWork"; }
+ (NSString *) contacts_Alias { return @"contacts:Alias"; }
+ (NSString *) contacts_AssistantName { return @"contacts:AssistantName"; }
+ (NSString *) contacts_Birthday { return @"contacts:Birthday"; }
+ (NSString *) contacts_BusinessHomePage { return @"contacts:BusinessHomePage"; }
+ (NSString *) contacts_Children { return @"contacts:Children"; }
+ (NSString *) contacts_Companies { return @"contacts:Companies"; }
+ (NSString *) contacts_CompanyName { return @"contacts:CompanyName"; }
+ (NSString *) contacts_CompleteName { return @"contacts:CompleteName"; }
+ (NSString *) contacts_ContactSource { return @"contacts:ContactSource"; }
+ (NSString *) contacts_Culture { return @"contacts:Culture"; }
+ (NSString *) contacts_Department { return @"contacts:Department"; }
+ (NSString *) contacts_DisplayName { return @"contacts:DisplayName"; }
+ (NSString *) contacts_DirectoryId { return @"contacts:DirectoryId"; }
+ (NSString *) contacts_DirectReports { return @"contacts:DirectReports"; }
+ (NSString *) contacts_EmailAddresses { return @"contacts:EmailAddresses"; }
+ (NSString *) contacts_FileAs { return @"contacts:FileAs"; }
+ (NSString *) contacts_FileAsMapping { return @"contacts:FileAsMapping"; }
+ (NSString *) contacts_Generation { return @"contacts:Generation"; }
+ (NSString *) contacts_GivenName { return @"contacts:GivenName"; }
+ (NSString *) contacts_ImAddresses { return @"contacts:ImAddresses"; }
+ (NSString *) contacts_Initials { return @"contacts:Initials"; }
+ (NSString *) contacts_JobTitle { return @"contacts:JobTitle"; }
+ (NSString *) contacts_Manager { return @"contacts:Manager"; }
+ (NSString *) contacts_ManagerMailbox { return @"contacts:ManagerMailbox"; }
+ (NSString *) contacts_MiddleName { return @"contacts:MiddleName"; }
+ (NSString *) contacts_Mileage { return @"contacts:Mileage"; }
+ (NSString *) contacts_MSExchangeCertificate { return @"contacts:MSExchangeCertificate"; }
+ (NSString *) contacts_Nickname { return @"contacts:Nickname"; }
+ (NSString *) contacts_Notes { return @"contacts:Notes"; }
+ (NSString *) contacts_OfficeLocation { return @"contacts:OfficeLocation"; }
+ (NSString *) contacts_PhoneNumbers { return @"contacts:PhoneNumbers"; }
+ (NSString *) contacts_PhoneticFullName { return @"contacts:PhoneticFullName"; }
+ (NSString *) contacts_PhoneticFirstName { return @"contacts:PhoneticFirstName"; }
+ (NSString *) contacts_PhoneticLastName { return @"contacts:PhoneticLastName"; }
+ (NSString *) contacts_Photo { return @"contacts:Photo"; }
+ (NSString *) contacts_PhysicalAddresses { return @"contacts:PhysicalAddresses"; }
+ (NSString *) contacts_PostalAddressIndex { return @"contacts:PostalAddressIndex"; }
+ (NSString *) contacts_Profession { return @"contacts:Profession"; }
+ (NSString *) contacts_SpouseName { return @"contacts:SpouseName"; }
+ (NSString *) contacts_Surname { return @"contacts:Surname"; }
+ (NSString *) contacts_WeddingAnniversary { return @"contacts:WeddingAnniversary"; }
+ (NSString *) contacts_UserSMIMECertificate { return @"contacts:UserSMIMECertificate"; }
+ (NSString *) contacts_HasPicture { return @"contacts:HasPicture"; }
+ (NSString *) distributionlist_Members { return @"distributionlist:Members"; }
+ (NSString *) postitem_PostedTime { return @"postitem:PostedTime"; }
+ (NSString *) conversation_ConversationId { return @"conversation:ConversationId"; }
+ (NSString *) conversation_ConversationTopic { return @"conversation:ConversationTopic"; }
+ (NSString *) conversation_UniqueRecipients { return @"conversation:UniqueRecipients"; }
+ (NSString *) conversation_GlobalUniqueRecipients { return @"conversation:GlobalUniqueRecipients"; }
+ (NSString *) conversation_UniqueUnreadSenders { return @"conversation:UniqueUnreadSenders"; }
+ (NSString *) conversation_GlobalUniqueUnreadSenders { return @"conversation:GlobalUniqueUnreadSenders"; }
+ (NSString *) conversation_UniqueSenders { return @"conversation:UniqueSenders"; }
+ (NSString *) conversation_GlobalUniqueSenders { return @"conversation:GlobalUniqueSenders"; }
+ (NSString *) conversation_LastDeliveryTime { return @"conversation:LastDeliveryTime"; }
+ (NSString *) conversation_GlobalLastDeliveryTime { return @"conversation:GlobalLastDeliveryTime"; }
+ (NSString *) conversation_Categories { return @"conversation:Categories"; }
+ (NSString *) conversation_GlobalCategories { return @"conversation:GlobalCategories"; }
+ (NSString *) conversation_FlagStatus { return @"conversation:FlagStatus"; }
+ (NSString *) conversation_GlobalFlagStatus { return @"conversation:GlobalFlagStatus"; }
+ (NSString *) conversation_HasAttachments { return @"conversation:HasAttachments"; }
+ (NSString *) conversation_GlobalHasAttachments { return @"conversation:GlobalHasAttachments"; }
+ (NSString *) conversation_MessageCount { return @"conversation:MessageCount"; }
+ (NSString *) conversation_GlobalMessageCount { return @"conversation:GlobalMessageCount"; }
+ (NSString *) conversation_UnreadCount { return @"conversation:UnreadCount"; }
+ (NSString *) conversation_GlobalUnreadCount { return @"conversation:GlobalUnreadCount"; }
+ (NSString *) conversation_Size { return @"conversation:Size"; }
+ (NSString *) conversation_GlobalSize { return @"conversation:GlobalSize"; }
+ (NSString *) conversation_ItemClasses { return @"conversation:ItemClasses"; }
+ (NSString *) conversation_GlobalItemClasses { return @"conversation:GlobalItemClasses"; }
+ (NSString *) conversation_Importance { return @"conversation:Importance"; }
+ (NSString *) conversation_GlobalImportance { return @"conversation:GlobalImportance"; }
+ (NSString *) conversation_ItemIds { return @"conversation:ItemIds"; }
+ (NSString *) conversation_GlobalItemIds { return @"conversation:GlobalItemIds"; }
@end

