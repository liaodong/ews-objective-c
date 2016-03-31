#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* GetPasswordExpirationDateType */
@interface MPSEWSGetPasswordExpirationDateType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetPasswordExpirationDateType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* mailboxSmtpAddress  /* xs:string */;


@end

