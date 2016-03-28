#import <Foundation/Foundation.h>






/* EmailAddress */
@interface EWSEmailAddress : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name         /* xs:string */;
@property (strong) NSString* address      /* xs:string */;
@property (strong) NSString* routingType  /* xs:string */;


@end

