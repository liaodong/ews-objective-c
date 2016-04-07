#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* PhoneCallIdType */
@interface MPSEWSPhoneCallIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneCallIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

