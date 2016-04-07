#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSTimeZoneDefinitionType;



/* ArrayOfTimeZoneDefinitionType */
@interface MPSEWSArrayOfTimeZoneDefinitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTimeZoneDefinitionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTimeZoneDefinitionType* timeZoneDefinition;


@end

