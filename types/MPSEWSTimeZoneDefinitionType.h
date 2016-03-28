#import <Foundation/Foundation.h>






/* TimeZoneDefinitionType */
@interface MPSEWSTimeZoneDefinitionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

