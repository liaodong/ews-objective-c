#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* EmailAddress */
@interface EWSEmailAddress : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* name         /* xs:string */;
@property (retain) NSString* address      /* xs:string */;
@property (retain) NSString* routingType  /* xs:string */;


@end

