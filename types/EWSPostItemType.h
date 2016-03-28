#import <Foundation/Foundation.h>
#import "EWSItemType.h"



@class EWSSingleRecipientType;



/* PostItemType */
@interface EWSPostItemType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSData*                 conversationIndex  /* xs:base64Binary */;
@property (strong) NSString*               conversationTopic  /* xs:string */;
@property (strong) EWSSingleRecipientType* from;
@property (strong) NSString*               internetMessageId  /* xs:string */;
@property (strong) NSNumber*               isRead             /* xs:boolean */;
@property (strong) NSString*               postedTime         /* xs:dateTime */;
@property (strong) NSString*               references         /* xs:string */;
@property (strong) EWSSingleRecipientType* sender;


@end

