#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* TimeZoneDefinitionType */
@interface EWSTimeZoneDefinitionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* id     /* xs:string */;


@end

