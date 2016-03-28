#import <Foundation/Foundation.h>






/* TimeZoneDefinitionType */
@interface EWSTimeZoneDefinitionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

