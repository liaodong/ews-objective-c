#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSTimeZoneDefinitionType;



/* TimeZoneContextType */
@interface MPSEWSTimeZoneContextType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeZoneContextType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTimeZoneDefinitionType* timeZoneDefinition;


@end

