#import <Foundation/Foundation.h>






/* SidAndAttributesType */
@interface EWSSidAndAttributesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* attributes          /* xs:unsignedInt */;
@property (strong) NSString* securityIdentifier  /* xs:string */;


@end

