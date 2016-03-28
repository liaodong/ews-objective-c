#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTaskType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSDoubleTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSLanguageTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfStringsType.h"
#import "../types/EWSBodyType.h"
#import "../types/EWSEffectiveRightsType.h"
#import "../types/EWSExtendedPropertyType.h"
#import "../types/EWSFolderIdType.h"
#import "../types/EWSImportanceChoicesType.h"
#import "../types/EWSItemClassType.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSMimeContentType.h"
#import "../types/EWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/EWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/EWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/EWSReminderMinutesBeforeStartType.h"
#import "../types/EWSSensitivityChoicesType.h"
#import "../types/EWSTaskDelegateStateType.h"
#import "../types/EWSTaskRecurrenceType.h"
#import "../types/EWSTaskStatusType.h"


@implementation EWSTaskType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTaskType class]];

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

    [handler property      : @"actualWork"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ActualWork"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"assignedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AssignedTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"billingInformation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BillingInformation"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"changeCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ChangeCount"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"companies"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"completeDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompleteDate"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"contacts"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Contacts"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"delegationState"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DelegationState"
             withHandler   : [EWSTaskDelegateStateType class]];

    [handler property      : @"delegator"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Delegator"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"dueDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DueDate"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"isAssignmentEditable"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsAssignmentEditable"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"isComplete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsComplete"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isTeamTask"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsTeamTask"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"mileage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"owner"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Owner"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"percentComplete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PercentComplete"
             withHandler   : [EWSDoubleTypeHandler class]];

    [handler property      : @"recurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [EWSTaskRecurrenceType class]];

    [handler property      : @"startDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"status"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Status"
             withHandler   : [EWSTaskStatusType class]];

    [handler property      : @"statusDescription"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StatusDescription"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"totalWork"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TotalWork"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTaskType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TaskType: ActualWork=%@ AssignedTime=%@ BillingInformation=%@ ChangeCount=%@ Companies=%@ CompleteDate=%@ Contacts=%@ DelegationState=%@ Delegator=%@ DueDate=%@ IsAssignmentEditable=%@ IsComplete=%@ IsRecurring=%@ IsTeamTask=%@ Mileage=%@ Owner=%@ PercentComplete=%@ Recurrence=%@ StartDate=%@ Status=%@ StatusDescription=%@ TotalWork=%@ super=%@", _actualWork, _assignedTime, _billingInformation, _changeCount, _companies, _completeDate, _contacts, _delegationState, _delegator, _dueDate, _isAssignmentEditable, _isComplete, _isRecurring, _isTeamTask, _mileage, _owner, _percentComplete, _recurrence, _startDate, _status, _statusDescription, _totalWork, [super description]];
}

@end

