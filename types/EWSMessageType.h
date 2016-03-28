#import <Foundation/Foundation.h>
#import "EWSItemType.h"



@class EWSArrayOfRecipientsType;
@class EWSSingleRecipientType;



/* MessageType */
@interface EWSMessageType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSingleRecipientType*   sender;
@property (strong) EWSArrayOfRecipientsType* toRecipients;
@property (strong) EWSArrayOfRecipientsType* ccRecipients;
@property (strong) EWSArrayOfRecipientsType* bccRecipients;
@property (strong) NSNumber*                 isReadReceiptRequested      /* xs:boolean */;
@property (strong) NSNumber*                 isDeliveryReceiptRequested  /* xs:boolean */;
@property (strong) NSData*                   conversationIndex           /* xs:base64Binary */;
@property (strong) NSString*                 conversationTopic           /* xs:string */;
@property (strong) EWSSingleRecipientType*   from;
@property (strong) NSString*                 internetMessageId           /* xs:string */;
@property (strong) NSNumber*                 isRead                      /* xs:boolean */;
@property (strong) NSNumber*                 isResponseRequested         /* xs:boolean */;
@property (strong) NSString*                 references                  /* xs:string */;
@property (strong) EWSArrayOfRecipientsType* replyTo;
@property (strong) EWSSingleRecipientType*   receivedBy;
@property (strong) EWSSingleRecipientType*   receivedRepresenting;


@end

