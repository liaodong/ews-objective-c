#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: RuleFieldURIType can be one of the following:
 *       1 RuleId
 *       2 DisplayName
 *       3 Priority
 *       4 IsNotSupported
 *       5 Actions
 *       6 Condition:Categories
 *       7 Condition:ContainsBodyStrings
 *       8 Condition:ContainsHeaderStrings
 *       9 Condition:ContainsRecipientStrings
 *       10 Condition:ContainsSenderStrings
 *       11 Condition:ContainsSubjectOrBodyStrings
 *       12 Condition:ContainsSubjectStrings
 *       13 Condition:FlaggedForAction
 *       14 Condition:FromAddresses
 *       15 Condition:FromConnectedAccounts
 *       16 Condition:HasAttachments
 *       17 Condition:Importance
 *       18 Condition:IsApprovalRequest
 *       19 Condition:IsAutomaticForward
 *       20 Condition:IsAutomaticReply
 *       21 Condition:IsEncrypted
 *       22 Condition:IsMeetingRequest
 *       23 Condition:IsMeetingResponse
 *       24 Condition:IsNDR
 *       25 Condition:IsPermissionControlled
 *       26 Condition:IsReadReceipt
 *       27 Condition:IsSigned
 *       28 Condition:IsVoicemail
 *       29 Condition:ItemClasses
 *       30 Condition:MessageClassifications
 *       31 Condition:NotSentToMe
 *       32 Condition:SentCcMe
 *       33 Condition:SentOnlyToMe
 *       34 Condition:SentToAddresses
 *       35 Condition:SentToMe
 *       36 Condition:SentToOrCcMe
 *       37 Condition:Sensitivity
 *       38 Condition:WithinDateRange
 *       39 Condition:WithinSizeRange
 *       40 Exception:Categories
 *       41 Exception:ContainsBodyStrings
 *       42 Exception:ContainsHeaderStrings
 *       43 Exception:ContainsRecipientStrings
 *       44 Exception:ContainsSenderStrings
 *       45 Exception:ContainsSubjectOrBodyStrings
 *       46 Exception:ContainsSubjectStrings
 *       47 Exception:FlaggedForAction
 *       48 Exception:FromAddresses
 *       49 Exception:FromConnectedAccounts
 *       50 Exception:HasAttachments
 *       51 Exception:Importance
 *       52 Exception:IsApprovalRequest
 *       53 Exception:IsAutomaticForward
 *       54 Exception:IsAutomaticReply
 *       55 Exception:IsEncrypted
 *       56 Exception:IsMeetingRequest
 *       57 Exception:IsMeetingResponse
 *       58 Exception:IsNDR
 *       59 Exception:IsPermissionControlled
 *       60 Exception:IsReadReceipt
 *       61 Exception:IsSigned
 *       62 Exception:IsVoicemail
 *       63 Exception:ItemClasses
 *       64 Exception:MessageClassifications
 *       65 Exception:NotSentToMe
 *       66 Exception:SentCcMe
 *       67 Exception:SentOnlyToMe
 *       68 Exception:SentToAddresses
 *       69 Exception:SentToMe
 *       70 Exception:SentToOrCcMe
 *       71 Exception:Sensitivity
 *       72 Exception:WithinDateRange
 *       73 Exception:WithinSizeRange
 *       74 Action:AssignCategories
 *       75 Action:CopyToFolder
 *       76 Action:Delete
 *       77 Action:ForwardAsAttachmentToRecipients
 *       78 Action:ForwardToRecipients
 *       79 Action:MarkImportance
 *       80 Action:MarkAsRead
 *       81 Action:MoveToFolder
 *       82 Action:PermanentDelete
 *       83 Action:RedirectToRecipients
 *       84 Action:SendSMSAlertToRecipients
 *       85 Action:ServerReplyWithMessage
 *       86 Action:StopProcessingRules
 *       87 IsEnabled
 *       88 IsInError
 *       89 Conditions
 *       90 Exceptions
 */
@interface MPSEWSRuleFieldURIType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse RuleFieldURIType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) RuleId;
+ (NSString *) DisplayName;
+ (NSString *) Priority;
+ (NSString *) IsNotSupported;
+ (NSString *) Actions;
+ (NSString *) Condition_Categories;
+ (NSString *) Condition_ContainsBodyStrings;
+ (NSString *) Condition_ContainsHeaderStrings;
+ (NSString *) Condition_ContainsRecipientStrings;
+ (NSString *) Condition_ContainsSenderStrings;
+ (NSString *) Condition_ContainsSubjectOrBodyStrings;
+ (NSString *) Condition_ContainsSubjectStrings;
+ (NSString *) Condition_FlaggedForAction;
+ (NSString *) Condition_FromAddresses;
+ (NSString *) Condition_FromConnectedAccounts;
+ (NSString *) Condition_HasAttachments;
+ (NSString *) Condition_Importance;
+ (NSString *) Condition_IsApprovalRequest;
+ (NSString *) Condition_IsAutomaticForward;
+ (NSString *) Condition_IsAutomaticReply;
+ (NSString *) Condition_IsEncrypted;
+ (NSString *) Condition_IsMeetingRequest;
+ (NSString *) Condition_IsMeetingResponse;
+ (NSString *) Condition_IsNDR;
+ (NSString *) Condition_IsPermissionControlled;
+ (NSString *) Condition_IsReadReceipt;
+ (NSString *) Condition_IsSigned;
+ (NSString *) Condition_IsVoicemail;
+ (NSString *) Condition_ItemClasses;
+ (NSString *) Condition_MessageClassifications;
+ (NSString *) Condition_NotSentToMe;
+ (NSString *) Condition_SentCcMe;
+ (NSString *) Condition_SentOnlyToMe;
+ (NSString *) Condition_SentToAddresses;
+ (NSString *) Condition_SentToMe;
+ (NSString *) Condition_SentToOrCcMe;
+ (NSString *) Condition_Sensitivity;
+ (NSString *) Condition_WithinDateRange;
+ (NSString *) Condition_WithinSizeRange;
+ (NSString *) Exception_Categories;
+ (NSString *) Exception_ContainsBodyStrings;
+ (NSString *) Exception_ContainsHeaderStrings;
+ (NSString *) Exception_ContainsRecipientStrings;
+ (NSString *) Exception_ContainsSenderStrings;
+ (NSString *) Exception_ContainsSubjectOrBodyStrings;
+ (NSString *) Exception_ContainsSubjectStrings;
+ (NSString *) Exception_FlaggedForAction;
+ (NSString *) Exception_FromAddresses;
+ (NSString *) Exception_FromConnectedAccounts;
+ (NSString *) Exception_HasAttachments;
+ (NSString *) Exception_Importance;
+ (NSString *) Exception_IsApprovalRequest;
+ (NSString *) Exception_IsAutomaticForward;
+ (NSString *) Exception_IsAutomaticReply;
+ (NSString *) Exception_IsEncrypted;
+ (NSString *) Exception_IsMeetingRequest;
+ (NSString *) Exception_IsMeetingResponse;
+ (NSString *) Exception_IsNDR;
+ (NSString *) Exception_IsPermissionControlled;
+ (NSString *) Exception_IsReadReceipt;
+ (NSString *) Exception_IsSigned;
+ (NSString *) Exception_IsVoicemail;
+ (NSString *) Exception_ItemClasses;
+ (NSString *) Exception_MessageClassifications;
+ (NSString *) Exception_NotSentToMe;
+ (NSString *) Exception_SentCcMe;
+ (NSString *) Exception_SentOnlyToMe;
+ (NSString *) Exception_SentToAddresses;
+ (NSString *) Exception_SentToMe;
+ (NSString *) Exception_SentToOrCcMe;
+ (NSString *) Exception_Sensitivity;
+ (NSString *) Exception_WithinDateRange;
+ (NSString *) Exception_WithinSizeRange;
+ (NSString *) Action_AssignCategories;
+ (NSString *) Action_CopyToFolder;
+ (NSString *) Action_Delete;
+ (NSString *) Action_ForwardAsAttachmentToRecipients;
+ (NSString *) Action_ForwardToRecipients;
+ (NSString *) Action_MarkImportance;
+ (NSString *) Action_MarkAsRead;
+ (NSString *) Action_MoveToFolder;
+ (NSString *) Action_PermanentDelete;
+ (NSString *) Action_RedirectToRecipients;
+ (NSString *) Action_SendSMSAlertToRecipients;
+ (NSString *) Action_ServerReplyWithMessage;
+ (NSString *) Action_StopProcessingRules;
+ (NSString *) IsEnabled;
+ (NSString *) IsInError;
+ (NSString *) Conditions;
+ (NSString *) Exceptions;
@end

