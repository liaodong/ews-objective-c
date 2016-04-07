#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* SmtpDomain */
@interface MPSEWSSmtpDomain : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSmtpDomain*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name               /* xs:string */;
@property (strong) NSNumber* includeSubdomains  /* xs:boolean */;


@end

