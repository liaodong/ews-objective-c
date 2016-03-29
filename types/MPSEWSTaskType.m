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

    [handler property      : @"actualWork"
             withNamespace : 't'
             withXmlTag    : @"ActualWork"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"assignedTime"
             withNamespace : 't'
             withXmlTag    : @"AssignedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"billingInformation"
             withNamespace : 't'
             withXmlTag    : @"BillingInformation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"changeCount"
             withNamespace : 't'
             withXmlTag    : @"ChangeCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"companies"
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"completeDate"
             withNamespace : 't'
             withXmlTag    : @"CompleteDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"contacts"
             withNamespace : 't'
             withXmlTag    : @"Contacts"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"delegationState"
             withNamespace : 't'
             withXmlTag    : @"DelegationState"
             withHandler   : [MPSEWSTaskDelegateStateType class]];

    [handler property      : @"delegator"
             withNamespace : 't'
             withXmlTag    : @"Delegator"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"dueDate"
             withNamespace : 't'
             withXmlTag    : @"DueDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isAssignmentEditable"
             withNamespace : 't'
             withXmlTag    : @"IsAssignmentEditable"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"isComplete"
             withNamespace : 't'
             withXmlTag    : @"IsComplete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isRecurring"
             withNamespace : 't'
             withXmlTag    : @"IsRecurring"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isTeamTask"
             withNamespace : 't'
             withXmlTag    : @"IsTeamTask"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"mileage"
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"owner"
             withNamespace : 't'
             withXmlTag    : @"Owner"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"percentComplete"
             withNamespace : 't'
             withXmlTag    : @"PercentComplete"
             withHandler   : [MPSEWSDoubleTypeHandler class]];

    [handler property      : @"recurrence"
             withNamespace : 't'
             withXmlTag    : @"Recurrence"
             withHandler   : [MPSEWSTaskRecurrenceType class]];

    [handler property      : @"startDate"
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"status"
             withNamespace : 't'
             withXmlTag    : @"Status"
             withHandler   : [MPSEWSTaskStatusType class]];

    [handler property      : @"statusDescription"
             withNamespace : 't'
             withXmlTag    : @"StatusDescription"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalWork"
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

