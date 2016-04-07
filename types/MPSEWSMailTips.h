#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;
@class MPSEWSOutOfOfficeMailTip;



/* MailTips */
@interface MPSEWSMailTips : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailTips*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType*    recipientAddress;
@property (strong) NSMutableArray<NSString*>* pendingMailTips      /* MPSEWSMailTipTypes */;
@property (strong) MPSEWSOutOfOfficeMailTip*  outOfOffice;
@property (strong) NSNumber*                  mailboxFull          /* xs:boolean */;
@property (strong) NSString*                  customMailTip        /* xs:string */;
@property (strong) NSNumber*                  totalMemberCount     /* xs:int */;
@property (strong) NSNumber*                  externalMemberCount  /* xs:int */;
@property (strong) NSNumber*                  maxMessageSize       /* xs:int */;
@property (strong) NSNumber*                  deliveryRestricted   /* xs:boolean */;
@property (strong) NSNumber*                  isModerated          /* xs:boolean */;
@property (strong) NSNumber*                  invalidRecipient     /* xs:boolean */;


@end

