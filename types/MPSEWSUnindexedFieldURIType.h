#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: UnindexedFieldURIType can be one of the following:
 *       1 folder:FolderId
 *       2 folder:ParentFolderId
 *       3 folder:DisplayName
 *       4 folder:UnreadCount
 *       5 folder:TotalCount
 *       6 folder:ChildFolderCount
 *       7 folder:FolderClass
 *       8 folder:SearchParameters
 *       9 folder:ManagedFolderInformation
 *       10 folder:PermissionSet
 *       11 folder:EffectiveRights
 *       12 item:ItemId
 *       13 item:ParentFolderId
 *       14 item:ItemClass
 *       15 item:MimeContent
 *       16 item:Attachments
 *       17 item:Subject
 *       18 item:DateTimeReceived
 *       19 item:Size
 *       20 item:Categories
 *       21 item:HasAttachments
 *       22 item:Importance
 *       23 item:InReplyTo
 *       24 item:InternetMessageHeaders
 *       25 item:IsDraft
 *       26 item:IsFromMe
 *       27 item:IsResend
 *       28 item:IsSubmitted
 *       29 item:IsUnmodified
 *       30 item:DateTimeSent
 *       31 item:DateTimeCreated
 *       32 item:Body
 *       33 item:ResponseObjects
 *       34 item:Sensitivity
 *       35 item:ReminderDueBy
 *       36 item:ReminderIsSet
 *       37 item:ReminderMinutesBeforeStart
 *       38 item:DisplayTo
 *       39 item:DisplayCc
 *       40 item:Culture
 *       41 item:EffectiveRights
 *       42 item:LastModifiedName
 *       43 item:LastModifiedTime
 *       44 message:ConversationIndex
 *       45 message:ConversationTopic
 *       46 message:InternetMessageId
 *       47 message:IsRead
 *       48 message:IsResponseRequested
 *       49 message:IsReadReceiptRequested
 *       50 message:IsDeliveryReceiptRequested
 *       51 message:ReceivedBy
 *       52 message:ReceivedRepresenting
 *       53 message:References
 *       54 message:ReplyTo
 *       55 message:From
 *       56 message:Sender
 *       57 message:ToRecipients
 *       58 message:CcRecipients
 *       59 message:BccRecipients
 *       60 meeting:AssociatedCalendarItemId
 *       61 meeting:IsDelegated
 *       62 meeting:IsOutOfDate
 *       63 meeting:HasBeenProcessed
 *       64 meeting:ResponseType
 *       65 meetingRequest:MeetingRequestType
 *       66 meetingRequest:IntendedFreeBusyStatus
 *       67 calendar:Start
 *       68 calendar:End
 *       69 calendar:OriginalStart
 *       70 calendar:IsAllDayEvent
 *       71 calendar:LegacyFreeBusyStatus
 *       72 calendar:Location
 *       73 calendar:When
 *       74 calendar:IsMeeting
 *       75 calendar:IsCancelled
 *       76 calendar:IsRecurring
 *       77 calendar:MeetingRequestWasSent
 *       78 calendar:IsResponseRequested
 *       79 calendar:CalendarItemType
 *       80 calendar:MyResponseType
 *       81 calendar:Organizer
 *       82 calendar:RequiredAttendees
 *       83 calendar:OptionalAttendees
 *       84 calendar:Resources
 *       85 calendar:ConflictingMeetingCount
 *       86 calendar:AdjacentMeetingCount
 *       87 calendar:ConflictingMeetings
 *       88 calendar:AdjacentMeetings
 *       89 calendar:Duration
 *       90 calendar:TimeZone
 *       91 calendar:AppointmentReplyTime
 *       92 calendar:AppointmentSequenceNumber
 *       93 calendar:AppointmentState
 *       94 calendar:Recurrence
 *       95 calendar:FirstOccurrence
 *       96 calendar:LastOccurrence
 *       97 calendar:ModifiedOccurrences
 *       98 calendar:DeletedOccurrences
 *       99 calendar:MeetingTimeZone
 *       100 calendar:ConferenceType
 *       101 calendar:AllowNewTimeProposal
 *       102 calendar:IsOnlineMeeting
 *       103 calendar:MeetingWorkspaceUrl
 *       104 calendar:NetShowUrl
 *       105 calendar:UID
 *       106 calendar:RecurrenceId
 *       107 calendar:DateTimeStamp
 *       108 task:ActualWork
 *       109 task:AssignedTime
 *       110 task:BillingInformation
 *       111 task:ChangeCount
 *       112 task:Companies
 *       113 task:CompleteDate
 *       114 task:Contacts
 *       115 task:DelegationState
 *       116 task:Delegator
 *       117 task:DueDate
 *       118 task:IsAssignmentEditable
 *       119 task:IsComplete
 *       120 task:IsRecurring
 *       121 task:IsTeamTask
 *       122 task:Mileage
 *       123 task:Owner
 *       124 task:PercentComplete
 *       125 task:Recurrence
 *       126 task:StartDate
 *       127 task:Status
 *       128 task:StatusDescription
 *       129 task:TotalWork
 *       130 contacts:AssistantName
 *       131 contacts:Birthday
 *       132 contacts:BusinessHomePage
 *       133 contacts:Children
 *       134 contacts:Companies
 *       135 contacts:CompanyName
 *       136 contacts:CompleteName
 *       137 contacts:ContactSource
 *       138 contacts:Culture
 *       139 contacts:Department
 *       140 contacts:DisplayName
 *       141 contacts:EmailAddresses
 *       142 contacts:FileAs
 *       143 contacts:FileAsMapping
 *       144 contacts:Generation
 *       145 contacts:GivenName
 *       146 contacts:ImAddresses
 *       147 contacts:Initials
 *       148 contacts:JobTitle
 *       149 contacts:Manager
 *       150 contacts:MiddleName
 *       151 contacts:Mileage
 *       152 contacts:Nickname
 *       153 contacts:OfficeLocation
 *       154 contacts:PhoneNumbers
 *       155 contacts:PhysicalAddresses
 *       156 contacts:PostalAddressIndex
 *       157 contacts:Profession
 *       158 contacts:SpouseName
 *       159 contacts:Surname
 *       160 contacts:WeddingAnniversary
 *       161 postitem:PostedTime
 */
@interface MPSEWSUnindexedFieldURIType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse UnindexedFieldURIType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) folder_FolderId;
+ (NSString *) folder_ParentFolderId;
+ (NSString *) folder_DisplayName;
+ (NSString *) folder_UnreadCount;
+ (NSString *) folder_TotalCount;
+ (NSString *) folder_ChildFolderCount;
+ (NSString *) folder_FolderClass;
+ (NSString *) folder_SearchParameters;
+ (NSString *) folder_ManagedFolderInformation;
+ (NSString *) folder_PermissionSet;
+ (NSString *) folder_EffectiveRights;
+ (NSString *) item_ItemId;
+ (NSString *) item_ParentFolderId;
+ (NSString *) item_ItemClass;
+ (NSString *) item_MimeContent;
+ (NSString *) item_Attachments;
+ (NSString *) item_Subject;
+ (NSString *) item_DateTimeReceived;
+ (NSString *) item_Size;
+ (NSString *) item_Categories;
+ (NSString *) item_HasAttachments;
+ (NSString *) item_Importance;
+ (NSString *) item_InReplyTo;
+ (NSString *) item_InternetMessageHeaders;
+ (NSString *) item_IsDraft;
+ (NSString *) item_IsFromMe;
+ (NSString *) item_IsResend;
+ (NSString *) item_IsSubmitted;
+ (NSString *) item_IsUnmodified;
+ (NSString *) item_DateTimeSent;
+ (NSString *) item_DateTimeCreated;
+ (NSString *) item_Body;
+ (NSString *) item_ResponseObjects;
+ (NSString *) item_Sensitivity;
+ (NSString *) item_ReminderDueBy;
+ (NSString *) item_ReminderIsSet;
+ (NSString *) item_ReminderMinutesBeforeStart;
+ (NSString *) item_DisplayTo;
+ (NSString *) item_DisplayCc;
+ (NSString *) item_Culture;
+ (NSString *) item_EffectiveRights;
+ (NSString *) item_LastModifiedName;
+ (NSString *) item_LastModifiedTime;
+ (NSString *) message_ConversationIndex;
+ (NSString *) message_ConversationTopic;
+ (NSString *) message_InternetMessageId;
+ (NSString *) message_IsRead;
+ (NSString *) message_IsResponseRequested;
+ (NSString *) message_IsReadReceiptRequested;
+ (NSString *) message_IsDeliveryReceiptRequested;
+ (NSString *) message_ReceivedBy;
+ (NSString *) message_ReceivedRepresenting;
+ (NSString *) message_References;
+ (NSString *) message_ReplyTo;
+ (NSString *) message_From;
+ (NSString *) message_Sender;
+ (NSString *) message_ToRecipients;
+ (NSString *) message_CcRecipients;
+ (NSString *) message_BccRecipients;
+ (NSString *) meeting_AssociatedCalendarItemId;
+ (NSString *) meeting_IsDelegated;
+ (NSString *) meeting_IsOutOfDate;
+ (NSString *) meeting_HasBeenProcessed;
+ (NSString *) meeting_ResponseType;
+ (NSString *) meetingRequest_MeetingRequestType;
+ (NSString *) meetingRequest_IntendedFreeBusyStatus;
+ (NSString *) calendar_Start;
+ (NSString *) calendar_End;
+ (NSString *) calendar_OriginalStart;
+ (NSString *) calendar_IsAllDayEvent;
+ (NSString *) calendar_LegacyFreeBusyStatus;
+ (NSString *) calendar_Location;
+ (NSString *) calendar_When;
+ (NSString *) calendar_IsMeeting;
+ (NSString *) calendar_IsCancelled;
+ (NSString *) calendar_IsRecurring;
+ (NSString *) calendar_MeetingRequestWasSent;
+ (NSString *) calendar_IsResponseRequested;
+ (NSString *) calendar_CalendarItemType;
+ (NSString *) calendar_MyResponseType;
+ (NSString *) calendar_Organizer;
+ (NSString *) calendar_RequiredAttendees;
+ (NSString *) calendar_OptionalAttendees;
+ (NSString *) calendar_Resources;
+ (NSString *) calendar_ConflictingMeetingCount;
+ (NSString *) calendar_AdjacentMeetingCount;
+ (NSString *) calendar_ConflictingMeetings;
+ (NSString *) calendar_AdjacentMeetings;
+ (NSString *) calendar_Duration;
+ (NSString *) calendar_TimeZone;
+ (NSString *) calendar_AppointmentReplyTime;
+ (NSString *) calendar_AppointmentSequenceNumber;
+ (NSString *) calendar_AppointmentState;
+ (NSString *) calendar_Recurrence;
+ (NSString *) calendar_FirstOccurrence;
+ (NSString *) calendar_LastOccurrence;
+ (NSString *) calendar_ModifiedOccurrences;
+ (NSString *) calendar_DeletedOccurrences;
+ (NSString *) calendar_MeetingTimeZone;
+ (NSString *) calendar_ConferenceType;
+ (NSString *) calendar_AllowNewTimeProposal;
+ (NSString *) calendar_IsOnlineMeeting;
+ (NSString *) calendar_MeetingWorkspaceUrl;
+ (NSString *) calendar_NetShowUrl;
+ (NSString *) calendar_UID;
+ (NSString *) calendar_RecurrenceId;
+ (NSString *) calendar_DateTimeStamp;
+ (NSString *) task_ActualWork;
+ (NSString *) task_AssignedTime;
+ (NSString *) task_BillingInformation;
+ (NSString *) task_ChangeCount;
+ (NSString *) task_Companies;
+ (NSString *) task_CompleteDate;
+ (NSString *) task_Contacts;
+ (NSString *) task_DelegationState;
+ (NSString *) task_Delegator;
+ (NSString *) task_DueDate;
+ (NSString *) task_IsAssignmentEditable;
+ (NSString *) task_IsComplete;
+ (NSString *) task_IsRecurring;
+ (NSString *) task_IsTeamTask;
+ (NSString *) task_Mileage;
+ (NSString *) task_Owner;
+ (NSString *) task_PercentComplete;
+ (NSString *) task_Recurrence;
+ (NSString *) task_StartDate;
+ (NSString *) task_Status;
+ (NSString *) task_StatusDescription;
+ (NSString *) task_TotalWork;
+ (NSString *) contacts_AssistantName;
+ (NSString *) contacts_Birthday;
+ (NSString *) contacts_BusinessHomePage;
+ (NSString *) contacts_Children;
+ (NSString *) contacts_Companies;
+ (NSString *) contacts_CompanyName;
+ (NSString *) contacts_CompleteName;
+ (NSString *) contacts_ContactSource;
+ (NSString *) contacts_Culture;
+ (NSString *) contacts_Department;
+ (NSString *) contacts_DisplayName;
+ (NSString *) contacts_EmailAddresses;
+ (NSString *) contacts_FileAs;
+ (NSString *) contacts_FileAsMapping;
+ (NSString *) contacts_Generation;
+ (NSString *) contacts_GivenName;
+ (NSString *) contacts_ImAddresses;
+ (NSString *) contacts_Initials;
+ (NSString *) contacts_JobTitle;
+ (NSString *) contacts_Manager;
+ (NSString *) contacts_MiddleName;
+ (NSString *) contacts_Mileage;
+ (NSString *) contacts_Nickname;
+ (NSString *) contacts_OfficeLocation;
+ (NSString *) contacts_PhoneNumbers;
+ (NSString *) contacts_PhysicalAddresses;
+ (NSString *) contacts_PostalAddressIndex;
+ (NSString *) contacts_Profession;
+ (NSString *) contacts_SpouseName;
+ (NSString *) contacts_Surname;
+ (NSString *) contacts_WeddingAnniversary;
+ (NSString *) postitem_PostedTime;
@end

