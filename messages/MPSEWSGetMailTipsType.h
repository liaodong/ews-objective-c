#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfRecipientsType;
@class MPSEWSEmailAddressType;



/* GetMailTipsType */
@interface MPSEWSGetMailTipsType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetMailTipsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType*      sendingAs;
@property (strong) MPSEWSArrayOfRecipientsType* recipients;
@property (strong) NSMutableArray<NSString*>*   mailTipsRequested  /* MPSEWSMailTipTypes */;


@end

