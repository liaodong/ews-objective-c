#import <Foundation/Foundation.h>

#import "EWSUnindexedFieldURIType.h"
@implementation EWSUnindexedFieldURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSUnindexedFieldURIType folder_FolderId], 
                                         [EWSUnindexedFieldURIType folder_ParentFolderId], 
                                         [EWSUnindexedFieldURIType folder_DisplayName], 
                                         [EWSUnindexedFieldURIType folder_UnreadCount], 
                                         [EWSUnindexedFieldURIType folder_TotalCount], 
                                         [EWSUnindexedFieldURIType folder_ChildFolderCount], 
                                         [EWSUnindexedFieldURIType folder_FolderClass], 
                                         [EWSUnindexedFieldURIType folder_SearchParameters], 
                                         [EWSUnindexedFieldURIType folder_ManagedFolderInformation], 
                                         [EWSUnindexedFieldURIType folder_PermissionSet], 
                                         [EWSUnindexedFieldURIType folder_EffectiveRights], 
                                         [EWSUnindexedFieldURIType item_ItemId], 
                                         [EWSUnindexedFieldURIType item_ParentFolderId], 
                                         [EWSUnindexedFieldURIType item_ItemClass], 
                                         [EWSUnindexedFieldURIType item_MimeContent], 
                                         [EWSUnindexedFieldURIType item_Attachments], 
                                         [EWSUnindexedFieldURIType item_Subject], 
                                         [EWSUnindexedFieldURIType item_DateTimeReceived], 
                                         [EWSUnindexedFieldURIType item_Size], 
                                         [EWSUnindexedFieldURIType item_Categories], 
                                         [EWSUnindexedFieldURIType item_HasAttachments], 
                                         [EWSUnindexedFieldURIType item_Importance], 
                                         [EWSUnindexedFieldURIType item_InReplyTo], 
                                         [EWSUnindexedFieldURIType item_InternetMessageHeaders], 
                                         [EWSUnindexedFieldURIType item_IsDraft], 
                                         [EWSUnindexedFieldURIType item_IsFromMe], 
                                         [EWSUnindexedFieldURIType item_IsResend], 
                                         [EWSUnindexedFieldURIType item_IsSubmitted], 
                                         [EWSUnindexedFieldURIType item_IsUnmodified], 
                                         [EWSUnindexedFieldURIType item_DateTimeSent], 
                                         [EWSUnindexedFieldURIType item_DateTimeCreated], 
                                         [EWSUnindexedFieldURIType item_Body], 
                                         [EWSUnindexedFieldURIType item_ResponseObjects], 
                                         [EWSUnindexedFieldURIType item_Sensitivity], 
                                         [EWSUnindexedFieldURIType item_ReminderDueBy], 
                                         [EWSUnindexedFieldURIType item_ReminderIsSet], 
                                         [EWSUnindexedFieldURIType item_ReminderMinutesBeforeStart], 
                                         [EWSUnindexedFieldURIType item_DisplayTo], 
                                         [EWSUnindexedFieldURIType item_DisplayCc], 
                                         [EWSUnindexedFieldURIType item_Culture], 
                                         [EWSUnindexedFieldURIType item_EffectiveRights], 
                                         [EWSUnindexedFieldURIType item_LastModifiedName], 
                                         [EWSUnindexedFieldURIType item_LastModifiedTime], 
                                         [EWSUnindexedFieldURIType message_ConversationIndex], 
                                         [EWSUnindexedFieldURIType message_ConversationTopic], 
                                         [EWSUnindexedFieldURIType message_InternetMessageId], 
                                         [EWSUnindexedFieldURIType message_IsRead], 
                                         [EWSUnindexedFieldURIType message_IsResponseRequested], 
                                         [EWSUnindexedFieldURIType message_IsReadReceiptRequested], 
                                         [EWSUnindexedFieldURIType message_IsDeliveryReceiptRequested], 
                                         [EWSUnindexedFieldURIType message_ReceivedBy], 
                                         [EWSUnindexedFieldURIType message_ReceivedRepresenting], 
                                         [EWSUnindexedFieldURIType message_References], 
                                         [EWSUnindexedFieldURIType message_ReplyTo], 
                                         [EWSUnindexedFieldURIType message_From], 
                                         [EWSUnindexedFieldURIType message_Sender], 
                                         [EWSUnindexedFieldURIType message_ToRecipients], 
                                         [EWSUnindexedFieldURIType message_CcRecipients], 
                                         [EWSUnindexedFieldURIType message_BccRecipients], 
                                         [EWSUnindexedFieldURIType meeting_AssociatedCalendarItemId], 
                                         [EWSUnindexedFieldURIType meeting_IsDelegated], 
                                         [EWSUnindexedFieldURIType meeting_IsOutOfDate], 
                                         [EWSUnindexedFieldURIType meeting_HasBeenProcessed], 
                                         [EWSUnindexedFieldURIType meeting_ResponseType], 
                                         [EWSUnindexedFieldURIType meetingRequest_MeetingRequestType], 
                                         [EWSUnindexedFieldURIType meetingRequest_IntendedFreeBusyStatus], 
                                         [EWSUnindexedFieldURIType calendar_Start], 
                                         [EWSUnindexedFieldURIType calendar_End], 
                                         [EWSUnindexedFieldURIType calendar_OriginalStart], 
                                         [EWSUnindexedFieldURIType calendar_IsAllDayEvent], 
                                         [EWSUnindexedFieldURIType calendar_LegacyFreeBusyStatus], 
                                         [EWSUnindexedFieldURIType calendar_Location], 
                                         [EWSUnindexedFieldURIType calendar_When], 
                                         [EWSUnindexedFieldURIType calendar_IsMeeting], 
                                         [EWSUnindexedFieldURIType calendar_IsCancelled], 
                                         [EWSUnindexedFieldURIType calendar_IsRecurring], 
                                         [EWSUnindexedFieldURIType calendar_MeetingRequestWasSent], 
                                         [EWSUnindexedFieldURIType calendar_IsResponseRequested], 
                                         [EWSUnindexedFieldURIType calendar_CalendarItemType], 
                                         [EWSUnindexedFieldURIType calendar_MyResponseType], 
                                         [EWSUnindexedFieldURIType calendar_Organizer], 
                                         [EWSUnindexedFieldURIType calendar_RequiredAttendees], 
                                         [EWSUnindexedFieldURIType calendar_OptionalAttendees], 
                                         [EWSUnindexedFieldURIType calendar_Resources], 
                                         [EWSUnindexedFieldURIType calendar_ConflictingMeetingCount], 
                                         [EWSUnindexedFieldURIType calendar_AdjacentMeetingCount], 
                                         [EWSUnindexedFieldURIType calendar_ConflictingMeetings], 
                                         [EWSUnindexedFieldURIType calendar_AdjacentMeetings], 
                                         [EWSUnindexedFieldURIType calendar_Duration], 
                                         [EWSUnindexedFieldURIType calendar_TimeZone], 
                                         [EWSUnindexedFieldURIType calendar_AppointmentReplyTime], 
                                         [EWSUnindexedFieldURIType calendar_AppointmentSequenceNumber], 
                                         [EWSUnindexedFieldURIType calendar_AppointmentState], 
                                         [EWSUnindexedFieldURIType calendar_Recurrence], 
                                         [EWSUnindexedFieldURIType calendar_FirstOccurrence], 
                                         [EWSUnindexedFieldURIType calendar_LastOccurrence], 
                                         [EWSUnindexedFieldURIType calendar_ModifiedOccurrences], 
                                         [EWSUnindexedFieldURIType calendar_DeletedOccurrences], 
                                         [EWSUnindexedFieldURIType calendar_MeetingTimeZone], 
                                         [EWSUnindexedFieldURIType calendar_ConferenceType], 
                                         [EWSUnindexedFieldURIType calendar_AllowNewTimeProposal], 
                                         [EWSUnindexedFieldURIType calendar_IsOnlineMeeting], 
                                         [EWSUnindexedFieldURIType calendar_MeetingWorkspaceUrl], 
                                         [EWSUnindexedFieldURIType calendar_NetShowUrl], 
                                         [EWSUnindexedFieldURIType calendar_UID], 
                                         [EWSUnindexedFieldURIType calendar_RecurrenceId], 
                                         [EWSUnindexedFieldURIType calendar_DateTimeStamp], 
                                         [EWSUnindexedFieldURIType task_ActualWork], 
                                         [EWSUnindexedFieldURIType task_AssignedTime], 
                                         [EWSUnindexedFieldURIType task_BillingInformation], 
                                         [EWSUnindexedFieldURIType task_ChangeCount], 
                                         [EWSUnindexedFieldURIType task_Companies], 
                                         [EWSUnindexedFieldURIType task_CompleteDate], 
                                         [EWSUnindexedFieldURIType task_Contacts], 
                                         [EWSUnindexedFieldURIType task_DelegationState], 
                                         [EWSUnindexedFieldURIType task_Delegator], 
                                         [EWSUnindexedFieldURIType task_DueDate], 
                                         [EWSUnindexedFieldURIType task_IsAssignmentEditable], 
                                         [EWSUnindexedFieldURIType task_IsComplete], 
                                         [EWSUnindexedFieldURIType task_IsRecurring], 
                                         [EWSUnindexedFieldURIType task_IsTeamTask], 
                                         [EWSUnindexedFieldURIType task_Mileage], 
                                         [EWSUnindexedFieldURIType task_Owner], 
                                         [EWSUnindexedFieldURIType task_PercentComplete], 
                                         [EWSUnindexedFieldURIType task_Recurrence], 
                                         [EWSUnindexedFieldURIType task_StartDate], 
                                         [EWSUnindexedFieldURIType task_Status], 
                                         [EWSUnindexedFieldURIType task_StatusDescription], 
                                         [EWSUnindexedFieldURIType task_TotalWork], 
                                         [EWSUnindexedFieldURIType contacts_AssistantName], 
                                         [EWSUnindexedFieldURIType contacts_Birthday], 
                                         [EWSUnindexedFieldURIType contacts_BusinessHomePage], 
                                         [EWSUnindexedFieldURIType contacts_Children], 
                                         [EWSUnindexedFieldURIType contacts_Companies], 
                                         [EWSUnindexedFieldURIType contacts_CompanyName], 
                                         [EWSUnindexedFieldURIType contacts_CompleteName], 
                                         [EWSUnindexedFieldURIType contacts_ContactSource], 
                                         [EWSUnindexedFieldURIType contacts_Culture], 
                                         [EWSUnindexedFieldURIType contacts_Department], 
                                         [EWSUnindexedFieldURIType contacts_DisplayName], 
                                         [EWSUnindexedFieldURIType contacts_EmailAddresses], 
                                         [EWSUnindexedFieldURIType contacts_FileAs], 
                                         [EWSUnindexedFieldURIType contacts_FileAsMapping], 
                                         [EWSUnindexedFieldURIType contacts_Generation], 
                                         [EWSUnindexedFieldURIType contacts_GivenName], 
                                         [EWSUnindexedFieldURIType contacts_ImAddresses], 
                                         [EWSUnindexedFieldURIType contacts_Initials], 
                                         [EWSUnindexedFieldURIType contacts_JobTitle], 
                                         [EWSUnindexedFieldURIType contacts_Manager], 
                                         [EWSUnindexedFieldURIType contacts_MiddleName], 
                                         [EWSUnindexedFieldURIType contacts_Mileage], 
                                         [EWSUnindexedFieldURIType contacts_Nickname], 
                                         [EWSUnindexedFieldURIType contacts_OfficeLocation], 
                                         [EWSUnindexedFieldURIType contacts_PhoneNumbers], 
                                         [EWSUnindexedFieldURIType contacts_PhysicalAddresses], 
                                         [EWSUnindexedFieldURIType contacts_PostalAddressIndex], 
                                         [EWSUnindexedFieldURIType contacts_Profession], 
                                         [EWSUnindexedFieldURIType contacts_SpouseName], 
                                         [EWSUnindexedFieldURIType contacts_Surname], 
                                         [EWSUnindexedFieldURIType contacts_WeddingAnniversary], 
                                         [EWSUnindexedFieldURIType postitem_PostedTime], nil];
    [[[EWSUnindexedFieldURIType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSUnindexedFieldURIType class]];
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
+ (NSString *) contacts_EmailAddresses { return @"contacts:EmailAddresses"; }
+ (NSString *) contacts_FileAs { return @"contacts:FileAs"; }
+ (NSString *) contacts_FileAsMapping { return @"contacts:FileAsMapping"; }
+ (NSString *) contacts_Generation { return @"contacts:Generation"; }
+ (NSString *) contacts_GivenName { return @"contacts:GivenName"; }
+ (NSString *) contacts_ImAddresses { return @"contacts:ImAddresses"; }
+ (NSString *) contacts_Initials { return @"contacts:Initials"; }
+ (NSString *) contacts_JobTitle { return @"contacts:JobTitle"; }
+ (NSString *) contacts_Manager { return @"contacts:Manager"; }
+ (NSString *) contacts_MiddleName { return @"contacts:MiddleName"; }
+ (NSString *) contacts_Mileage { return @"contacts:Mileage"; }
+ (NSString *) contacts_Nickname { return @"contacts:Nickname"; }
+ (NSString *) contacts_OfficeLocation { return @"contacts:OfficeLocation"; }
+ (NSString *) contacts_PhoneNumbers { return @"contacts:PhoneNumbers"; }
+ (NSString *) contacts_PhysicalAddresses { return @"contacts:PhysicalAddresses"; }
+ (NSString *) contacts_PostalAddressIndex { return @"contacts:PostalAddressIndex"; }
+ (NSString *) contacts_Profession { return @"contacts:Profession"; }
+ (NSString *) contacts_SpouseName { return @"contacts:SpouseName"; }
+ (NSString *) contacts_Surname { return @"contacts:Surname"; }
+ (NSString *) contacts_WeddingAnniversary { return @"contacts:WeddingAnniversary"; }
+ (NSString *) postitem_PostedTime { return @"postitem:PostedTime"; }
@end

