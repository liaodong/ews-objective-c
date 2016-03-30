#import <Foundation/Foundation.h>



@class MPSEWSTimeZoneDefinitionType;



/* TimeZoneContextType */
@interface MPSEWSTimeZoneContextType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeZoneContextType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTimeZoneDefinitionType* timeZoneDefinition;


@end

