#import <Foundation/Foundation.h>



@class MPSEWSTimeZoneDefinitionType;



/* ArrayOfTimeZoneDefinitionType */
@interface MPSEWSArrayOfTimeZoneDefinitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTimeZoneDefinitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTimeZoneDefinitionType* timeZoneDefinition;


@end

