#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"






/* GetPasswordExpirationDateResponseMessageType */
@interface MPSEWSGetPasswordExpirationDateResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetPasswordExpirationDateResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* passwordExpirationDate  /* xs:dateTime */;


@end

