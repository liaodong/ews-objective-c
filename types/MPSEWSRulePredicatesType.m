#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRulePredicatesType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSArrayOfEmailAddressesType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSFlaggedForActionType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSRulePredicateDateRangeType.h"
#import "../types/MPSEWSRulePredicateSizeRangeType.h"
#import "../types/MPSEWSSensitivityChoicesType.h"


@implementation MPSEWSRulePredicatesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRulePredicatesType class]];

    [handler property      : @"categories"
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsBodyStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsBodyStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsHeaderStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsHeaderStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsRecipientStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsRecipientStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsSenderStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsSenderStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsSubjectOrBodyStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsSubjectOrBodyStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"containsSubjectStrings"
             withNamespace : 't'
             withXmlTag    : @"ContainsSubjectStrings"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"flaggedForAction"
             withNamespace : 't'
             withXmlTag    : @"FlaggedForAction"
             withHandler   : [MPSEWSFlaggedForActionType class]];

    [handler property      : @"fromAddresses"
             withNamespace : 't'
             withXmlTag    : @"FromAddresses"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"fromConnectedAccounts"
             withNamespace : 't'
             withXmlTag    : @"FromConnectedAccounts"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"hasAttachments"
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"importance"
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"isApprovalRequest"
             withNamespace : 't'
             withXmlTag    : @"IsApprovalRequest"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isAutomaticForward"
             withNamespace : 't'
             withXmlTag    : @"IsAutomaticForward"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isAutomaticReply"
             withNamespace : 't'
             withXmlTag    : @"IsAutomaticReply"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isEncrypted"
             withNamespace : 't'
             withXmlTag    : @"IsEncrypted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isMeetingRequest"
             withNamespace : 't'
             withXmlTag    : @"IsMeetingRequest"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isMeetingResponse"
             withNamespace : 't'
             withXmlTag    : @"IsMeetingResponse"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isNDR"
             withNamespace : 't'
             withXmlTag    : @"IsNDR"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isPermissionControlled"
             withNamespace : 't'
             withXmlTag    : @"IsPermissionControlled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isReadReceipt"
             withNamespace : 't'
             withXmlTag    : @"IsReadReceipt"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isSigned"
             withNamespace : 't'
             withXmlTag    : @"IsSigned"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isVoicemail"
             withNamespace : 't'
             withXmlTag    : @"IsVoicemail"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"itemClasses"
             withNamespace : 't'
             withXmlTag    : @"ItemClasses"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"messageClassifications"
             withNamespace : 't'
             withXmlTag    : @"MessageClassifications"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"notSentToMe"
             withNamespace : 't'
             withXmlTag    : @"NotSentToMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"sentCcMe"
             withNamespace : 't'
             withXmlTag    : @"SentCcMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"sentOnlyToMe"
             withNamespace : 't'
             withXmlTag    : @"SentOnlyToMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"sentToAddresses"
             withNamespace : 't'
             withXmlTag    : @"SentToAddresses"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"sentToMe"
             withNamespace : 't'
             withXmlTag    : @"SentToMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"sentToOrCcMe"
             withNamespace : 't'
             withXmlTag    : @"SentToOrCcMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"sensitivity"
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [MPSEWSSensitivityChoicesType class]];

    [handler property      : @"withinDateRange"
             withNamespace : 't'
             withXmlTag    : @"WithinDateRange"
             withHandler   : [MPSEWSRulePredicateDateRangeType class]];

    [handler property      : @"withinSizeRange"
             withNamespace : 't'
             withXmlTag    : @"WithinSizeRange"
             withHandler   : [MPSEWSRulePredicateSizeRangeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRulePredicatesType*) val
{   (void) val;
    if ([val categories] && ![MPSEWSArrayOfStringsType isValid:[val categories]]) return FALSE;
    if ([val containsBodyStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsBodyStrings]]) return FALSE;
    if ([val containsHeaderStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsHeaderStrings]]) return FALSE;
    if ([val containsRecipientStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsRecipientStrings]]) return FALSE;
    if ([val containsSenderStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsSenderStrings]]) return FALSE;
    if ([val containsSubjectOrBodyStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsSubjectOrBodyStrings]]) return FALSE;
    if ([val containsSubjectStrings] && ![MPSEWSArrayOfStringsType isValid:[val containsSubjectStrings]]) return FALSE;
    if ([val flaggedForAction] && ![MPSEWSFlaggedForActionType isValid:[val flaggedForAction]]) return FALSE;
    if ([val fromAddresses] && ![MPSEWSArrayOfEmailAddressesType isValid:[val fromAddresses]]) return FALSE;
    if ([val fromConnectedAccounts] && ![MPSEWSArrayOfStringsType isValid:[val fromConnectedAccounts]]) return FALSE;
    if ([val hasAttachments] && ![MPSEWSBooleanTypeHandler isValid:[val hasAttachments]]) return FALSE;
    if ([val importance] && ![MPSEWSImportanceChoicesType isValid:[val importance]]) return FALSE;
    if ([val isApprovalRequest] && ![MPSEWSBooleanTypeHandler isValid:[val isApprovalRequest]]) return FALSE;
    if ([val isAutomaticForward] && ![MPSEWSBooleanTypeHandler isValid:[val isAutomaticForward]]) return FALSE;
    if ([val isAutomaticReply] && ![MPSEWSBooleanTypeHandler isValid:[val isAutomaticReply]]) return FALSE;
    if ([val isEncrypted] && ![MPSEWSBooleanTypeHandler isValid:[val isEncrypted]]) return FALSE;
    if ([val isMeetingRequest] && ![MPSEWSBooleanTypeHandler isValid:[val isMeetingRequest]]) return FALSE;
    if ([val isMeetingResponse] && ![MPSEWSBooleanTypeHandler isValid:[val isMeetingResponse]]) return FALSE;
    if ([val isNDR] && ![MPSEWSBooleanTypeHandler isValid:[val isNDR]]) return FALSE;
    if ([val isPermissionControlled] && ![MPSEWSBooleanTypeHandler isValid:[val isPermissionControlled]]) return FALSE;
    if ([val isReadReceipt] && ![MPSEWSBooleanTypeHandler isValid:[val isReadReceipt]]) return FALSE;
    if ([val isSigned] && ![MPSEWSBooleanTypeHandler isValid:[val isSigned]]) return FALSE;
    if ([val isVoicemail] && ![MPSEWSBooleanTypeHandler isValid:[val isVoicemail]]) return FALSE;
    if ([val itemClasses] && ![MPSEWSArrayOfStringsType isValid:[val itemClasses]]) return FALSE;
    if ([val messageClassifications] && ![MPSEWSArrayOfStringsType isValid:[val messageClassifications]]) return FALSE;
    if ([val notSentToMe] && ![MPSEWSBooleanTypeHandler isValid:[val notSentToMe]]) return FALSE;
    if ([val sentCcMe] && ![MPSEWSBooleanTypeHandler isValid:[val sentCcMe]]) return FALSE;
    if ([val sentOnlyToMe] && ![MPSEWSBooleanTypeHandler isValid:[val sentOnlyToMe]]) return FALSE;
    if ([val sentToAddresses] && ![MPSEWSArrayOfEmailAddressesType isValid:[val sentToAddresses]]) return FALSE;
    if ([val sentToMe] && ![MPSEWSBooleanTypeHandler isValid:[val sentToMe]]) return FALSE;
    if ([val sentToOrCcMe] && ![MPSEWSBooleanTypeHandler isValid:[val sentToOrCcMe]]) return FALSE;
    if ([val sensitivity] && ![MPSEWSSensitivityChoicesType isValid:[val sensitivity]]) return FALSE;
    if ([val withinDateRange] && ![MPSEWSRulePredicateDateRangeType isValid:[val withinDateRange]]) return FALSE;
    if ([val withinSizeRange] && ![MPSEWSRulePredicateSizeRangeType isValid:[val withinSizeRange]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRulePredicatesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RulePredicatesType: Categories=%@ ContainsBodyStrings=%@ ContainsHeaderStrings=%@ ContainsRecipientStrings=%@ ContainsSenderStrings=%@ ContainsSubjectOrBodyStrings=%@ ContainsSubjectStrings=%@ FlaggedForAction=%@ FromAddresses=%@ FromConnectedAccounts=%@ HasAttachments=%@ Importance=%@ IsApprovalRequest=%@ IsAutomaticForward=%@ IsAutomaticReply=%@ IsEncrypted=%@ IsMeetingRequest=%@ IsMeetingResponse=%@ IsNDR=%@ IsPermissionControlled=%@ IsReadReceipt=%@ IsSigned=%@ IsVoicemail=%@ ItemClasses=%@ MessageClassifications=%@ NotSentToMe=%@ SentCcMe=%@ SentOnlyToMe=%@ SentToAddresses=%@ SentToMe=%@ SentToOrCcMe=%@ Sensitivity=%@ WithinDateRange=%@ WithinSizeRange=%@", _categories, _containsBodyStrings, _containsHeaderStrings, _containsRecipientStrings, _containsSenderStrings, _containsSubjectOrBodyStrings, _containsSubjectStrings, _flaggedForAction, _fromAddresses, _fromConnectedAccounts, _hasAttachments, _importance, _isApprovalRequest, _isAutomaticForward, _isAutomaticReply, _isEncrypted, _isMeetingRequest, _isMeetingResponse, _isNDR, _isPermissionControlled, _isReadReceipt, _isSigned, _isVoicemail, _itemClasses, _messageClassifications, _notSentToMe, _sentCcMe, _sentOnlyToMe, _sentToAddresses, _sentToMe, _sentToOrCcMe, _sensitivity, _withinDateRange, _withinSizeRange];
}

@end

