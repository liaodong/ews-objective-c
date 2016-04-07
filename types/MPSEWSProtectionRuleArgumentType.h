#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ProtectionRuleArgumentType */
@interface MPSEWSProtectionRuleArgumentType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleArgumentType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

