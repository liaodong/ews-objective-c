#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* GetInboxRulesRequestType */
@interface MPSEWSGetInboxRulesRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetInboxRulesRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* mailboxSmtpAddress  /* xs:string */;


@end

