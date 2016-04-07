#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* InvalidRecipientType */
@interface MPSEWSInvalidRecipientType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSInvalidRecipientType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* smtpAddress   /* MPSEWSNonEmptyStringType */;
@property (strong) NSString* responseCode  /* MPSEWSInvalidRecipientResponseCodeType */;
@property (strong) NSString* messageText   /* xs:string */;


@end

