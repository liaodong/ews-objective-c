#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSBase64BinaryTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSSingleRecipientType.h"
#import "EWSItemType.h"



/* PostItemType */
@interface EWSPostItemType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSData*                 conversationIndex  /* xs:base64Binary */;
@property (retain) NSString*               conversationTopic  /* xs:string */;
@property (retain) EWSSingleRecipientType* from;
@property (retain) NSString*               internetMessageId  /* xs:string */;
@property (retain) NSNumber*               isRead             /* xs:boolean */;
@property (retain) NSString*               postedTime         /* xs:dateTime */;
@property (retain) NSString*               references         /* xs:string */;
@property (retain) EWSSingleRecipientType* sender;


@end

