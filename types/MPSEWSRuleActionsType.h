#import <Foundation/Foundation.h>



@class MPSEWSArrayOfEmailAddressesType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSItemIdType;
@class MPSEWSTargetFolderIdType;



/* RuleActionsType */
@interface MPSEWSRuleActionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleActionsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfStringsType*        assignCategories;
@property (strong) MPSEWSTargetFolderIdType*        pCopyToFolder;
@property (strong) NSNumber*                        delete                           /* xs:boolean */;
@property (strong) MPSEWSArrayOfEmailAddressesType* forwardAsAttachmentToRecipients;
@property (strong) MPSEWSArrayOfEmailAddressesType* forwardToRecipients;
@property (strong) NSString*                        markImportance                   /* MPSEWSImportanceChoicesType */;
@property (strong) NSNumber*                        markAsRead                       /* xs:boolean */;
@property (strong) MPSEWSTargetFolderIdType*        moveToFolder;
@property (strong) NSNumber*                        permanentDelete                  /* xs:boolean */;
@property (strong) MPSEWSArrayOfEmailAddressesType* redirectToRecipients;
@property (strong) MPSEWSArrayOfEmailAddressesType* sendSMSAlertToRecipients;
@property (strong) MPSEWSItemIdType*                serverReplyWithMessage;
@property (strong) NSNumber*                        stopProcessingRules              /* xs:boolean */;


@end

