#import <Foundation/Foundation.h>






/* TimeZoneDefinitionType */
@interface MPSEWSTimeZoneDefinitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeZoneDefinitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

