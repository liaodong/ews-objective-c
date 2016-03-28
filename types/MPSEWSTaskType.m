#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTaskType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSDoubleTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSBodyType.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemClassType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSMimeContentType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/MPSEWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/MPSEWSReminderMinutesBeforeStartType.h"
#import "../types/MPSEWSSensitivityChoicesType.h"
#import "../types/MPSEWSTaskDelegateStateType.h"
#import "../types/MPSEWSTaskRecurrenceType.h"
#import "../types/MPSEWSTaskStatusType.h"


@implementation MPSEWSTaskType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTaskType class]];

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

    [handler property      : @"actualWork"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ActualWork"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"assignedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AssignedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"billingInformation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BillingInformation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"changeCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ChangeCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"companies"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"completeDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompleteDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"contacts"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Contacts"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"delegationState"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DelegationState"
             withHandler   : [MPSEWSTaskDelegateStateType class]];

    [handler property      : @"delegator"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Delegator"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"dueDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DueDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isAssignmentEditable"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsAssignmentEditable"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"isComplete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsComplete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isTeamTask"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsTeamTask"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"mileage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"owner"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Owner"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"percentComplete"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PercentComplete"
             withHandler   : [MPSEWSDoubleTypeHandler class]];

    [handler property      : @"recurrence"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [MPSEWSTaskRecurrenceType class]];

    [handler property      : @"startDate"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"status"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Status"
             withHandler   : [MPSEWSTaskStatusType class]];

    [handler property      : @"statusDescription"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"StatusDescription"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalWork"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TotalWork"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTaskType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TaskType: ActualWork=%@ AssignedTime=%@ BillingInformation=%@ ChangeCount=%@ Companies=%@ CompleteDate=%@ Contacts=%@ DelegationState=%@ Delegator=%@ DueDate=%@ IsAssignmentEditable=%@ IsComplete=%@ IsRecurring=%@ IsTeamTask=%@ Mileage=%@ Owner=%@ PercentComplete=%@ Recurrence=%@ StartDate=%@ Status=%@ StatusDescription=%@ TotalWork=%@ super=%@", _actualWork, _assignedTime, _billingInformation, _changeCount, _companies, _completeDate, _contacts, _delegationState, _delegator, _dueDate, _isAssignmentEditable, _isComplete, _isRecurring, _isTeamTask, _mileage, _owner, _percentComplete, _recurrence, _startDate, _status, _statusDescription, _totalWork, [super description]];
}

@end

