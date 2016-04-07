#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSArrayOfRecipientsType;
@class MPSEWSSingleRecipientType;



/* MessageType */
@interface MPSEWSMessageType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSingleRecipientType*   sender;
@property (strong) MPSEWSArrayOfRecipientsType* toRecipients;
@property (strong) MPSEWSArrayOfRecipientsType* ccRecipients;
@property (strong) MPSEWSArrayOfRecipientsType* bccRecipients;
@property (strong) NSNumber*                    isReadReceiptRequested      /* xs:boolean */;
@property (strong) NSNumber*                    isDeliveryReceiptRequested  /* xs:boolean */;
@property (strong) NSData*                      conversationIndex           /* xs:base64Binary */;
@property (strong) NSString*                    conversationTopic           /* xs:string */;
@property (strong) MPSEWSSingleRecipientType*   from;
@property (strong) NSString*                    internetMessageId           /* xs:string */;
@property (strong) NSNumber*                    isRead                      /* xs:boolean */;
@property (strong) NSNumber*                    isResponseRequested         /* xs:boolean */;
@property (strong) NSString*                    references                  /* xs:string */;
@property (strong) MPSEWSArrayOfRecipientsType* replyTo;
@property (strong) MPSEWSSingleRecipientType*   receivedBy;
@property (strong) MPSEWSSingleRecipientType*   receivedRepresenting;


@end

