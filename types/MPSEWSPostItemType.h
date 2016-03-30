#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSSingleRecipientType;



/* PostItemType */
@interface MPSEWSPostItemType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPostItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSData*                    conversationIndex  /* xs:base64Binary */;
@property (strong) NSString*                  conversationTopic  /* xs:string */;
@property (strong) MPSEWSSingleRecipientType* from;
@property (strong) NSString*                  internetMessageId  /* xs:string */;
@property (strong) NSNumber*                  isRead             /* xs:boolean */;
@property (strong) NSString*                  postedTime         /* xs:dateTime */;
@property (strong) NSString*                  references         /* xs:string */;
@property (strong) MPSEWSSingleRecipientType* sender;


@end

