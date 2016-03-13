#import <Foundation/Foundation.h>




#import "../handlers/EWSBase64BinaryTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfRecipientsType.h"
#import "../types/EWSSingleRecipientType.h"
#import "EWSItemType.h"



/* MessageType */
@interface EWSMessageType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSingleRecipientType*   sender;
@property (retain) EWSArrayOfRecipientsType* toRecipients;
@property (retain) EWSArrayOfRecipientsType* ccRecipients;
@property (retain) EWSArrayOfRecipientsType* bccRecipients;
@property (retain) NSNumber*                 isReadReceiptRequested      /* xs:boolean */;
@property (retain) NSNumber*                 isDeliveryReceiptRequested  /* xs:boolean */;
@property (retain) NSData*                   conversationIndex           /* xs:base64Binary */;
@property (retain) NSString*                 conversationTopic           /* xs:string */;
@property (retain) EWSSingleRecipientType*   from;
@property (retain) NSString*                 internetMessageId           /* xs:string */;
@property (retain) NSNumber*                 isRead                      /* xs:boolean */;
@property (retain) NSNumber*                 isResponseRequested         /* xs:boolean */;
@property (retain) NSString*                 references                  /* xs:string */;
@property (retain) EWSArrayOfRecipientsType* replyTo;
@property (retain) EWSSingleRecipientType*   receivedBy;
@property (retain) EWSSingleRecipientType*   receivedRepresenting;


@end

