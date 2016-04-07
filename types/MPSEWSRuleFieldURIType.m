#import <Foundation/Foundation.h>

#import "MPSEWSRuleFieldURIType.h"
@implementation MPSEWSRuleFieldURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSRuleFieldURIType RuleId], 
                                         [MPSEWSRuleFieldURIType DisplayName], 
                                         [MPSEWSRuleFieldURIType Priority], 
                                         [MPSEWSRuleFieldURIType IsNotSupported], 
                                         [MPSEWSRuleFieldURIType Actions], 
                                         [MPSEWSRuleFieldURIType Condition_Categories], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsBodyStrings], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsHeaderStrings], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsRecipientStrings], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsSenderStrings], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsSubjectOrBodyStrings], 
                                         [MPSEWSRuleFieldURIType Condition_ContainsSubjectStrings], 
                                         [MPSEWSRuleFieldURIType Condition_FlaggedForAction], 
                                         [MPSEWSRuleFieldURIType Condition_FromAddresses], 
                                         [MPSEWSRuleFieldURIType Condition_FromConnectedAccounts], 
                                         [MPSEWSRuleFieldURIType Condition_HasAttachments], 
                                         [MPSEWSRuleFieldURIType Condition_Importance], 
                                         [MPSEWSRuleFieldURIType Condition_IsApprovalRequest], 
                                         [MPSEWSRuleFieldURIType Condition_IsAutomaticForward], 
                                         [MPSEWSRuleFieldURIType Condition_IsAutomaticReply], 
                                         [MPSEWSRuleFieldURIType Condition_IsEncrypted], 
                                         [MPSEWSRuleFieldURIType Condition_IsMeetingRequest], 
                                         [MPSEWSRuleFieldURIType Condition_IsMeetingResponse], 
                                         [MPSEWSRuleFieldURIType Condition_IsNDR], 
                                         [MPSEWSRuleFieldURIType Condition_IsPermissionControlled], 
                                         [MPSEWSRuleFieldURIType Condition_IsReadReceipt], 
                                         [MPSEWSRuleFieldURIType Condition_IsSigned], 
                                         [MPSEWSRuleFieldURIType Condition_IsVoicemail], 
                                         [MPSEWSRuleFieldURIType Condition_ItemClasses], 
                                         [MPSEWSRuleFieldURIType Condition_MessageClassifications], 
                                         [MPSEWSRuleFieldURIType Condition_NotSentToMe], 
                                         [MPSEWSRuleFieldURIType Condition_SentCcMe], 
                                         [MPSEWSRuleFieldURIType Condition_SentOnlyToMe], 
                                         [MPSEWSRuleFieldURIType Condition_SentToAddresses], 
                                         [MPSEWSRuleFieldURIType Condition_SentToMe], 
                                         [MPSEWSRuleFieldURIType Condition_SentToOrCcMe], 
                                         [MPSEWSRuleFieldURIType Condition_Sensitivity], 
                                         [MPSEWSRuleFieldURIType Condition_WithinDateRange], 
                                         [MPSEWSRuleFieldURIType Condition_WithinSizeRange], 
                                         [MPSEWSRuleFieldURIType Exception_Categories], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsBodyStrings], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsHeaderStrings], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsRecipientStrings], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsSenderStrings], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsSubjectOrBodyStrings], 
                                         [MPSEWSRuleFieldURIType Exception_ContainsSubjectStrings], 
                                         [MPSEWSRuleFieldURIType Exception_FlaggedForAction], 
                                         [MPSEWSRuleFieldURIType Exception_FromAddresses], 
                                         [MPSEWSRuleFieldURIType Exception_FromConnectedAccounts], 
                                         [MPSEWSRuleFieldURIType Exception_HasAttachments], 
                                         [MPSEWSRuleFieldURIType Exception_Importance], 
                                         [MPSEWSRuleFieldURIType Exception_IsApprovalRequest], 
                                         [MPSEWSRuleFieldURIType Exception_IsAutomaticForward], 
                                         [MPSEWSRuleFieldURIType Exception_IsAutomaticReply], 
                                         [MPSEWSRuleFieldURIType Exception_IsEncrypted], 
                                         [MPSEWSRuleFieldURIType Exception_IsMeetingRequest], 
                                         [MPSEWSRuleFieldURIType Exception_IsMeetingResponse], 
                                         [MPSEWSRuleFieldURIType Exception_IsNDR], 
                                         [MPSEWSRuleFieldURIType Exception_IsPermissionControlled], 
                                         [MPSEWSRuleFieldURIType Exception_IsReadReceipt], 
                                         [MPSEWSRuleFieldURIType Exception_IsSigned], 
                                         [MPSEWSRuleFieldURIType Exception_IsVoicemail], 
                                         [MPSEWSRuleFieldURIType Exception_ItemClasses], 
                                         [MPSEWSRuleFieldURIType Exception_MessageClassifications], 
                                         [MPSEWSRuleFieldURIType Exception_NotSentToMe], 
                                         [MPSEWSRuleFieldURIType Exception_SentCcMe], 
                                         [MPSEWSRuleFieldURIType Exception_SentOnlyToMe], 
                                         [MPSEWSRuleFieldURIType Exception_SentToAddresses], 
                                         [MPSEWSRuleFieldURIType Exception_SentToMe], 
                                         [MPSEWSRuleFieldURIType Exception_SentToOrCcMe], 
                                         [MPSEWSRuleFieldURIType Exception_Sensitivity], 
                                         [MPSEWSRuleFieldURIType Exception_WithinDateRange], 
                                         [MPSEWSRuleFieldURIType Exception_WithinSizeRange], 
                                         [MPSEWSRuleFieldURIType Action_AssignCategories], 
                                         [MPSEWSRuleFieldURIType Action_CopyToFolder], 
                                         [MPSEWSRuleFieldURIType Action_Delete], 
                                         [MPSEWSRuleFieldURIType Action_ForwardAsAttachmentToRecipients], 
                                         [MPSEWSRuleFieldURIType Action_ForwardToRecipients], 
                                         [MPSEWSRuleFieldURIType Action_MarkImportance], 
                                         [MPSEWSRuleFieldURIType Action_MarkAsRead], 
                                         [MPSEWSRuleFieldURIType Action_MoveToFolder], 
                                         [MPSEWSRuleFieldURIType Action_PermanentDelete], 
                                         [MPSEWSRuleFieldURIType Action_RedirectToRecipients], 
                                         [MPSEWSRuleFieldURIType Action_SendSMSAlertToRecipients], 
                                         [MPSEWSRuleFieldURIType Action_ServerReplyWithMessage], 
                                         [MPSEWSRuleFieldURIType Action_StopProcessingRules], 
                                         [MPSEWSRuleFieldURIType IsEnabled], 
                                         [MPSEWSRuleFieldURIType IsInError], 
                                         [MPSEWSRuleFieldURIType Conditions], 
                                         [MPSEWSRuleFieldURIType Exceptions], nil];
    [[[MPSEWSRuleFieldURIType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSRuleFieldURIType class]];
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

+ (NSString *) RuleId { return @"RuleId"; }
+ (NSString *) DisplayName { return @"DisplayName"; }
+ (NSString *) Priority { return @"Priority"; }
+ (NSString *) IsNotSupported { return @"IsNotSupported"; }
+ (NSString *) Actions { return @"Actions"; }
+ (NSString *) Condition_Categories { return @"Condition:Categories"; }
+ (NSString *) Condition_ContainsBodyStrings { return @"Condition:ContainsBodyStrings"; }
+ (NSString *) Condition_ContainsHeaderStrings { return @"Condition:ContainsHeaderStrings"; }
+ (NSString *) Condition_ContainsRecipientStrings { return @"Condition:ContainsRecipientStrings"; }
+ (NSString *) Condition_ContainsSenderStrings { return @"Condition:ContainsSenderStrings"; }
+ (NSString *) Condition_ContainsSubjectOrBodyStrings { return @"Condition:ContainsSubjectOrBodyStrings"; }
+ (NSString *) Condition_ContainsSubjectStrings { return @"Condition:ContainsSubjectStrings"; }
+ (NSString *) Condition_FlaggedForAction { return @"Condition:FlaggedForAction"; }
+ (NSString *) Condition_FromAddresses { return @"Condition:FromAddresses"; }
+ (NSString *) Condition_FromConnectedAccounts { return @"Condition:FromConnectedAccounts"; }
+ (NSString *) Condition_HasAttachments { return @"Condition:HasAttachments"; }
+ (NSString *) Condition_Importance { return @"Condition:Importance"; }
+ (NSString *) Condition_IsApprovalRequest { return @"Condition:IsApprovalRequest"; }
+ (NSString *) Condition_IsAutomaticForward { return @"Condition:IsAutomaticForward"; }
+ (NSString *) Condition_IsAutomaticReply { return @"Condition:IsAutomaticReply"; }
+ (NSString *) Condition_IsEncrypted { return @"Condition:IsEncrypted"; }
+ (NSString *) Condition_IsMeetingRequest { return @"Condition:IsMeetingRequest"; }
+ (NSString *) Condition_IsMeetingResponse { return @"Condition:IsMeetingResponse"; }
+ (NSString *) Condition_IsNDR { return @"Condition:IsNDR"; }
+ (NSString *) Condition_IsPermissionControlled { return @"Condition:IsPermissionControlled"; }
+ (NSString *) Condition_IsReadReceipt { return @"Condition:IsReadReceipt"; }
+ (NSString *) Condition_IsSigned { return @"Condition:IsSigned"; }
+ (NSString *) Condition_IsVoicemail { return @"Condition:IsVoicemail"; }
+ (NSString *) Condition_ItemClasses { return @"Condition:ItemClasses"; }
+ (NSString *) Condition_MessageClassifications { return @"Condition:MessageClassifications"; }
+ (NSString *) Condition_NotSentToMe { return @"Condition:NotSentToMe"; }
+ (NSString *) Condition_SentCcMe { return @"Condition:SentCcMe"; }
+ (NSString *) Condition_SentOnlyToMe { return @"Condition:SentOnlyToMe"; }
+ (NSString *) Condition_SentToAddresses { return @"Condition:SentToAddresses"; }
+ (NSString *) Condition_SentToMe { return @"Condition:SentToMe"; }
+ (NSString *) Condition_SentToOrCcMe { return @"Condition:SentToOrCcMe"; }
+ (NSString *) Condition_Sensitivity { return @"Condition:Sensitivity"; }
+ (NSString *) Condition_WithinDateRange { return @"Condition:WithinDateRange"; }
+ (NSString *) Condition_WithinSizeRange { return @"Condition:WithinSizeRange"; }
+ (NSString *) Exception_Categories { return @"Exception:Categories"; }
+ (NSString *) Exception_ContainsBodyStrings { return @"Exception:ContainsBodyStrings"; }
+ (NSString *) Exception_ContainsHeaderStrings { return @"Exception:ContainsHeaderStrings"; }
+ (NSString *) Exception_ContainsRecipientStrings { return @"Exception:ContainsRecipientStrings"; }
+ (NSString *) Exception_ContainsSenderStrings { return @"Exception:ContainsSenderStrings"; }
+ (NSString *) Exception_ContainsSubjectOrBodyStrings { return @"Exception:ContainsSubjectOrBodyStrings"; }
+ (NSString *) Exception_ContainsSubjectStrings { return @"Exception:ContainsSubjectStrings"; }
+ (NSString *) Exception_FlaggedForAction { return @"Exception:FlaggedForAction"; }
+ (NSString *) Exception_FromAddresses { return @"Exception:FromAddresses"; }
+ (NSString *) Exception_FromConnectedAccounts { return @"Exception:FromConnectedAccounts"; }
+ (NSString *) Exception_HasAttachments { return @"Exception:HasAttachments"; }
+ (NSString *) Exception_Importance { return @"Exception:Importance"; }
+ (NSString *) Exception_IsApprovalRequest { return @"Exception:IsApprovalRequest"; }
+ (NSString *) Exception_IsAutomaticForward { return @"Exception:IsAutomaticForward"; }
+ (NSString *) Exception_IsAutomaticReply { return @"Exception:IsAutomaticReply"; }
+ (NSString *) Exception_IsEncrypted { return @"Exception:IsEncrypted"; }
+ (NSString *) Exception_IsMeetingRequest { return @"Exception:IsMeetingRequest"; }
+ (NSString *) Exception_IsMeetingResponse { return @"Exception:IsMeetingResponse"; }
+ (NSString *) Exception_IsNDR { return @"Exception:IsNDR"; }
+ (NSString *) Exception_IsPermissionControlled { return @"Exception:IsPermissionControlled"; }
+ (NSString *) Exception_IsReadReceipt { return @"Exception:IsReadReceipt"; }
+ (NSString *) Exception_IsSigned { return @"Exception:IsSigned"; }
+ (NSString *) Exception_IsVoicemail { return @"Exception:IsVoicemail"; }
+ (NSString *) Exception_ItemClasses { return @"Exception:ItemClasses"; }
+ (NSString *) Exception_MessageClassifications { return @"Exception:MessageClassifications"; }
+ (NSString *) Exception_NotSentToMe { return @"Exception:NotSentToMe"; }
+ (NSString *) Exception_SentCcMe { return @"Exception:SentCcMe"; }
+ (NSString *) Exception_SentOnlyToMe { return @"Exception:SentOnlyToMe"; }
+ (NSString *) Exception_SentToAddresses { return @"Exception:SentToAddresses"; }
+ (NSString *) Exception_SentToMe { return @"Exception:SentToMe"; }
+ (NSString *) Exception_SentToOrCcMe { return @"Exception:SentToOrCcMe"; }
+ (NSString *) Exception_Sensitivity { return @"Exception:Sensitivity"; }
+ (NSString *) Exception_WithinDateRange { return @"Exception:WithinDateRange"; }
+ (NSString *) Exception_WithinSizeRange { return @"Exception:WithinSizeRange"; }
+ (NSString *) Action_AssignCategories { return @"Action:AssignCategories"; }
+ (NSString *) Action_CopyToFolder { return @"Action:CopyToFolder"; }
+ (NSString *) Action_Delete { return @"Action:Delete"; }
+ (NSString *) Action_ForwardAsAttachmentToRecipients { return @"Action:ForwardAsAttachmentToRecipients"; }
+ (NSString *) Action_ForwardToRecipients { return @"Action:ForwardToRecipients"; }
+ (NSString *) Action_MarkImportance { return @"Action:MarkImportance"; }
+ (NSString *) Action_MarkAsRead { return @"Action:MarkAsRead"; }
+ (NSString *) Action_MoveToFolder { return @"Action:MoveToFolder"; }
+ (NSString *) Action_PermanentDelete { return @"Action:PermanentDelete"; }
+ (NSString *) Action_RedirectToRecipients { return @"Action:RedirectToRecipients"; }
+ (NSString *) Action_SendSMSAlertToRecipients { return @"Action:SendSMSAlertToRecipients"; }
+ (NSString *) Action_ServerReplyWithMessage { return @"Action:ServerReplyWithMessage"; }
+ (NSString *) Action_StopProcessingRules { return @"Action:StopProcessingRules"; }
+ (NSString *) IsEnabled { return @"IsEnabled"; }
+ (NSString *) IsInError { return @"IsInError"; }
+ (NSString *) Conditions { return @"Conditions"; }
+ (NSString *) Exceptions { return @"Exceptions"; }
@end

