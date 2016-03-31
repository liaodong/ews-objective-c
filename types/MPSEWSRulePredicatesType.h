#import <Foundation/Foundation.h>



@class MPSEWSArrayOfEmailAddressesType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSRulePredicateDateRangeType;
@class MPSEWSRulePredicateSizeRangeType;



/* RulePredicatesType */
@interface MPSEWSRulePredicatesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRulePredicatesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfStringsType*         categories;
@property (strong) MPSEWSArrayOfStringsType*         containsBodyStrings;
@property (strong) MPSEWSArrayOfStringsType*         containsHeaderStrings;
@property (strong) MPSEWSArrayOfStringsType*         containsRecipientStrings;
@property (strong) MPSEWSArrayOfStringsType*         containsSenderStrings;
@property (strong) MPSEWSArrayOfStringsType*         containsSubjectOrBodyStrings;
@property (strong) MPSEWSArrayOfStringsType*         containsSubjectStrings;
@property (strong) NSString*                         flaggedForAction              /* MPSEWSFlaggedForActionType */;
@property (strong) MPSEWSArrayOfEmailAddressesType*  fromAddresses;
@property (strong) MPSEWSArrayOfStringsType*         fromConnectedAccounts;
@property (strong) NSNumber*                         hasAttachments                /* xs:boolean */;
@property (strong) NSString*                         importance                    /* MPSEWSImportanceChoicesType */;
@property (strong) NSNumber*                         isApprovalRequest             /* xs:boolean */;
@property (strong) NSNumber*                         isAutomaticForward            /* xs:boolean */;
@property (strong) NSNumber*                         isAutomaticReply              /* xs:boolean */;
@property (strong) NSNumber*                         isEncrypted                   /* xs:boolean */;
@property (strong) NSNumber*                         isMeetingRequest              /* xs:boolean */;
@property (strong) NSNumber*                         isMeetingResponse             /* xs:boolean */;
@property (strong) NSNumber*                         isNDR                         /* xs:boolean */;
@property (strong) NSNumber*                         isPermissionControlled        /* xs:boolean */;
@property (strong) NSNumber*                         isReadReceipt                 /* xs:boolean */;
@property (strong) NSNumber*                         isSigned                      /* xs:boolean */;
@property (strong) NSNumber*                         isVoicemail                   /* xs:boolean */;
@property (strong) MPSEWSArrayOfStringsType*         itemClasses;
@property (strong) MPSEWSArrayOfStringsType*         messageClassifications;
@property (strong) NSNumber*                         notSentToMe                   /* xs:boolean */;
@property (strong) NSNumber*                         sentCcMe                      /* xs:boolean */;
@property (strong) NSNumber*                         sentOnlyToMe                  /* xs:boolean */;
@property (strong) MPSEWSArrayOfEmailAddressesType*  sentToAddresses;
@property (strong) NSNumber*                         sentToMe                      /* xs:boolean */;
@property (strong) NSNumber*                         sentToOrCcMe                  /* xs:boolean */;
@property (strong) NSString*                         sensitivity                   /* MPSEWSSensitivityChoicesType */;
@property (strong) MPSEWSRulePredicateDateRangeType* withinDateRange;
@property (strong) MPSEWSRulePredicateSizeRangeType* withinSizeRange;


@end

