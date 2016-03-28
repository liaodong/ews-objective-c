#import <Foundation/Foundation.h>






/* SidAndAttributesType */
@interface MPSEWSSidAndAttributesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* attributes          /* xs:unsignedInt */;
@property (strong) NSString* securityIdentifier  /* xs:string */;


@end

