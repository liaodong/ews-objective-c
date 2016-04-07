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
 *       12 folder:SharingEffectiveRights
 *       13 item:ItemId
 *       14 item:ParentFolderId
 *       15 item:ItemClass
 *       16 item:MimeContent
 *       17 item:Attachments
 *       18 item:Subject
 *       19 item:DateTimeReceived
 *       20 item:Size
 *       21 item:Categories
 *       22 item:HasAttachments
 *       23 item:Importance
 *       24 item:InReplyTo
 *       25 item:InternetMessageHeaders
 *       26 item:IsAssociated
 *       27 item:IsDraft
 *       28 item:IsFromMe
 *       29 item:IsResend
 *       30 item:IsSubmitted
 *       31 item:IsUnmodified
 *       32 item:DateTimeSent
 *       33 item:DateTimeCreated
 *       34 item:Body
 *       35 item:ResponseObjects
 *       36 item:Sensitivity
 *       37 item:ReminderDueBy
 *       38 item:ReminderIsSet
 *       39 item:ReminderMinutesBeforeStart
 *       40 item:DisplayTo
 *       41 item:DisplayCc
 *       42 item:Culture
 *       43 item:EffectiveRights
 *       44 item:LastModifiedName
 *       45 item:LastModifiedTime
 *       46 item:ConversationId
 *       47 item:UniqueBody
 *       48 item:StoreEntryId
 *       49 item:WebClientReadFormQueryString
 *       50 item:WebClientEditFormQueryString
 *       51 message:ConversationIndex
 *       52 message:ConversationTopic
 *       53 message:InternetMessageId
 *       54 message:IsRead
 *       55 message:IsResponseRequested
 *       56 message:IsReadReceiptRequested
 *       57 message:IsDeliveryReceiptRequested
 *       58 message:ReceivedBy
 *       59 message:ReceivedRepresenting
 *       60 message:References
 *       61 message:ReplyTo
 *       62 message:From
 *       63 message:Sender
 *       64 message:ToRecipients
 *       65 message:CcRecipients
 *       66 message:BccRecipients
 *       67 meeting:AssociatedCalendarItemId
 *       68 meeting:IsDelegated
 *       69 meeting:IsOutOfDate
 *       70 meeting:HasBeenProcessed
 *       71 meeting:ResponseType
 *       72 meetingRequest:MeetingRequestType
 *       73 meetingRequest:IntendedFreeBusyStatus
 *       74 calendar:Start
 *       75 calendar:End
 *       76 calendar:OriginalStart
 *       77 calendar:IsAllDayEvent
 *       78 calendar:LegacyFreeBusyStatus
 *       79 calendar:Location
 *       80 calendar:When
 *       81 calendar:IsMeeting
 *       82 calendar:IsCancelled
 *       83 calendar:IsRecurring
 *       84 calendar:MeetingRequestWasSent
 *       85 calendar:IsResponseRequested
 *       86 calendar:CalendarItemType
 *       87 calendar:MyResponseType
 *       88 calendar:Organizer
 *       89 calendar:RequiredAttendees
 *       90 calendar:OptionalAttendees
 *       91 calendar:Resources
 *       92 calendar:ConflictingMeetingCount
 *       93 calendar:AdjacentMeetingCount
 *       94 calendar:ConflictingMeetings
 *       95 calendar:AdjacentMeetings
 *       96 calendar:Duration
 *       97 calendar:TimeZone
 *       98 calendar:AppointmentReplyTime
 *       99 calendar:AppointmentSequenceNumber
 *       100 calendar:AppointmentState
 *       101 calendar:Recurrence
 *       102 calendar:FirstOccurrence
 *       103 calendar:LastOccurrence
 *       104 calendar:ModifiedOccurrences
 *       105 calendar:DeletedOccurrences
 *       106 calendar:MeetingTimeZone
 *       107 calendar:ConferenceType
 *       108 calendar:AllowNewTimeProposal
 *       109 calendar:IsOnlineMeeting
 *       110 calendar:MeetingWorkspaceUrl
 *       111 calendar:NetShowUrl
 *       112 calendar:UID
 *       113 calendar:RecurrenceId
 *       114 calendar:DateTimeStamp
 *       115 calendar:StartTimeZone
 *       116 calendar:EndTimeZone
 *       117 task:ActualWork
 *       118 task:AssignedTime
 *       119 task:BillingInformation
 *       120 task:ChangeCount
 *       121 task:Companies
 *       122 task:CompleteDate
 *       123 task:Contacts
 *       124 task:DelegationState
 *       125 task:Delegator
 *       126 task:DueDate
 *       127 task:IsAssignmentEditable
 *       128 task:IsComplete
 *       129 task:IsRecurring
 *       130 task:IsTeamTask
 *       131 task:Mileage
 *       132 task:Owner
 *       133 task:PercentComplete
 *       134 task:Recurrence
 *       135 task:StartDate
 *       136 task:Status
 *       137 task:StatusDescription
 *       138 task:TotalWork
 *       139 contacts:Alias
 *       140 contacts:AssistantName
 *       141 contacts:Birthday
 *       142 contacts:BusinessHomePage
 *       143 contacts:Children
 *       144 contacts:Companies
 *       145 contacts:CompanyName
 *       146 contacts:CompleteName
 *       147 contacts:ContactSource
 *       148 contacts:Culture
 *       149 contacts:Department
 *       150 contacts:DisplayName
 *       151 contacts:DirectoryId
 *       152 contacts:DirectReports
 *       153 contacts:EmailAddresses
 *       154 contacts:FileAs
 *       155 contacts:FileAsMapping
 *       156 contacts:Generation
 *       157 contacts:GivenName
 *       158 contacts:ImAddresses
 *       159 contacts:Initials
 *       160 contacts:JobTitle
 *       161 contacts:Manager
 *       162 contacts:ManagerMailbox
 *       163 contacts:MiddleName
 *       164 contacts:Mileage
 *       165 contacts:MSExchangeCertificate
 *       166 contacts:Nickname
 *       167 contacts:Notes
 *       168 contacts:OfficeLocation
 *       169 contacts:PhoneNumbers
 *       170 contacts:PhoneticFullName
 *       171 contacts:PhoneticFirstName
 *       172 contacts:PhoneticLastName
 *       173 contacts:Photo
 *       174 contacts:PhysicalAddresses
 *       175 contacts:PostalAddressIndex
 *       176 contacts:Profession
 *       177 contacts:SpouseName
 *       178 contacts:Surname
 *       179 contacts:WeddingAnniversary
 *       180 contacts:UserSMIMECertificate
 *       181 contacts:HasPicture
 *       182 distributionlist:Members
 *       183 postitem:PostedTime
 *       184 conversation:ConversationId
 *       185 conversation:ConversationTopic
 *       186 conversation:UniqueRecipients
 *       187 conversation:GlobalUniqueRecipients
 *       188 conversation:UniqueUnreadSenders
 *       189 conversation:GlobalUniqueUnreadSenders
 *       190 conversation:UniqueSenders
 *       191 conversation:GlobalUniqueSenders
 *       192 conversation:LastDeliveryTime
 *       193 conversation:GlobalLastDeliveryTime
 *       194 conversation:Categories
 *       195 conversation:GlobalCategories
 *       196 conversation:FlagStatus
 *       197 conversation:GlobalFlagStatus
 *       198 conversation:HasAttachments
 *       199 conversation:GlobalHasAttachments
 *       200 conversation:MessageCount
 *       201 conversation:GlobalMessageCount
 *       202 conversation:UnreadCount
 *       203 conversation:GlobalUnreadCount
 *       204 conversation:Size
 *       205 conversation:GlobalSize
 *       206 conversation:ItemClasses
 *       207 conversation:GlobalItemClasses
 *       208 conversation:Importance
 *       209 conversation:GlobalImportance
 *       210 conversation:ItemIds
 *       211 conversation:GlobalItemIds
 */
@interface MPSEWSUnindexedFieldURIType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse UnindexedFieldURIType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

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
+ (NSString *) folder_SharingEffectiveRights;
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
+ (NSString *) item_IsAssociated;
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
+ (NSString *) item_ConversationId;
+ (NSString *) item_UniqueBody;
+ (NSString *) item_StoreEntryId;
+ (NSString *) item_WebClientReadFormQueryString;
+ (NSString *) item_WebClientEditFormQueryString;
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
+ (NSString *) calendar_StartTimeZone;
+ (NSString *) calendar_EndTimeZone;
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
+ (NSString *) contacts_Alias;
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
+ (NSString *) contacts_DirectoryId;
+ (NSString *) contacts_DirectReports;
+ (NSString *) contacts_EmailAddresses;
+ (NSString *) contacts_FileAs;
+ (NSString *) contacts_FileAsMapping;
+ (NSString *) contacts_Generation;
+ (NSString *) contacts_GivenName;
+ (NSString *) contacts_ImAddresses;
+ (NSString *) contacts_Initials;
+ (NSString *) contacts_JobTitle;
+ (NSString *) contacts_Manager;
+ (NSString *) contacts_ManagerMailbox;
+ (NSString *) contacts_MiddleName;
+ (NSString *) contacts_Mileage;
+ (NSString *) contacts_MSExchangeCertificate;
+ (NSString *) contacts_Nickname;
+ (NSString *) contacts_Notes;
+ (NSString *) contacts_OfficeLocation;
+ (NSString *) contacts_PhoneNumbers;
+ (NSString *) contacts_PhoneticFullName;
+ (NSString *) contacts_PhoneticFirstName;
+ (NSString *) contacts_PhoneticLastName;
+ (NSString *) contacts_Photo;
+ (NSString *) contacts_PhysicalAddresses;
+ (NSString *) contacts_PostalAddressIndex;
+ (NSString *) contacts_Profession;
+ (NSString *) contacts_SpouseName;
+ (NSString *) contacts_Surname;
+ (NSString *) contacts_WeddingAnniversary;
+ (NSString *) contacts_UserSMIMECertificate;
+ (NSString *) contacts_HasPicture;
+ (NSString *) distributionlist_Members;
+ (NSString *) postitem_PostedTime;
+ (NSString *) conversation_ConversationId;
+ (NSString *) conversation_ConversationTopic;
+ (NSString *) conversation_UniqueRecipients;
+ (NSString *) conversation_GlobalUniqueRecipients;
+ (NSString *) conversation_UniqueUnreadSenders;
+ (NSString *) conversation_GlobalUniqueUnreadSenders;
+ (NSString *) conversation_UniqueSenders;
+ (NSString *) conversation_GlobalUniqueSenders;
+ (NSString *) conversation_LastDeliveryTime;
+ (NSString *) conversation_GlobalLastDeliveryTime;
+ (NSString *) conversation_Categories;
+ (NSString *) conversation_GlobalCategories;
+ (NSString *) conversation_FlagStatus;
+ (NSString *) conversation_GlobalFlagStatus;
+ (NSString *) conversation_HasAttachments;
+ (NSString *) conversation_GlobalHasAttachments;
+ (NSString *) conversation_MessageCount;
+ (NSString *) conversation_GlobalMessageCount;
+ (NSString *) conversation_UnreadCount;
+ (NSString *) conversation_GlobalUnreadCount;
+ (NSString *) conversation_Size;
+ (NSString *) conversation_GlobalSize;
+ (NSString *) conversation_ItemClasses;
+ (NSString *) conversation_GlobalItemClasses;
+ (NSString *) conversation_Importance;
+ (NSString *) conversation_GlobalImportance;
+ (NSString *) conversation_ItemIds;
+ (NSString *) conversation_GlobalItemIds;
@end

