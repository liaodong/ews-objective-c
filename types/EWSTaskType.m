#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTaskType.h"


@implementation EWSTaskType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTaskType class]];

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

    [handler property   : @"actualWork"
             isRequired : FALSE
             withXmlTag : @"ActualWork"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"assignedTime"
             isRequired : FALSE
             withXmlTag : @"AssignedTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"billingInformation"
             isRequired : FALSE
             withXmlTag : @"BillingInformation"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"changeCount"
             isRequired : FALSE
             withXmlTag : @"ChangeCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"companies"
             isRequired : FALSE
             withXmlTag : @"Companies"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"completeDate"
             isRequired : FALSE
             withXmlTag : @"CompleteDate"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"contacts"
             isRequired : FALSE
             withXmlTag : @"Contacts"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"delegationState"
             isRequired : FALSE
             withXmlTag : @"DelegationState"
             withHandler: [EWSTaskDelegateStateType class]];

    [handler property   : @"delegator"
             isRequired : FALSE
             withXmlTag : @"Delegator"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"dueDate"
             isRequired : FALSE
             withXmlTag : @"DueDate"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"isAssignmentEditable"
             isRequired : FALSE
             withXmlTag : @"IsAssignmentEditable"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"isComplete"
             isRequired : FALSE
             withXmlTag : @"IsComplete"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isRecurring"
             isRequired : FALSE
             withXmlTag : @"IsRecurring"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isTeamTask"
             isRequired : FALSE
             withXmlTag : @"IsTeamTask"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"mileage"
             isRequired : FALSE
             withXmlTag : @"Mileage"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"owner"
             isRequired : FALSE
             withXmlTag : @"Owner"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"percentComplete"
             isRequired : FALSE
             withXmlTag : @"PercentComplete"
             withHandler: [EWSDoubleTypeHandler class]];

    [handler property   : @"recurrence"
             isRequired : FALSE
             withXmlTag : @"Recurrence"
             withHandler: [EWSTaskRecurrenceType class]];

    [handler property   : @"startDate"
             isRequired : FALSE
             withXmlTag : @"StartDate"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"status"
             isRequired : FALSE
             withXmlTag : @"Status"
             withHandler: [EWSTaskStatusType class]];

    [handler property   : @"statusDescription"
             isRequired : FALSE
             withXmlTag : @"StatusDescription"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"totalWork"
             isRequired : FALSE
             withXmlTag : @"TotalWork"
             withHandler: [EWSIntegerTypeHandler class]];

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

