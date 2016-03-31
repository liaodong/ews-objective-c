#import <Foundation/Foundation.h>
#import "MPSEWSServiceConfiguration.h"



@class MPSEWSSmtpDomainList;



/* MailTipsServiceConfiguration */
@interface MPSEWSMailTipsServiceConfiguration : MPSEWSServiceConfiguration

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailTipsServiceConfiguration*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*             mailTipsEnabled                     /* xs:boolean */;
@property (strong) NSNumber*             maxRecipientsPerGetMailTipsRequest  /* xs:int */;
@property (strong) NSNumber*             maxMessageSize                      /* xs:int */;
@property (strong) NSNumber*             largeAudienceThreshold              /* xs:int */;
@property (strong) NSNumber*             showExternalRecipientCount          /* xs:boolean */;
@property (strong) MPSEWSSmtpDomainList* internalDomains;


@end

