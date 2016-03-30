#import <Foundation/Foundation.h>






/* SidAndAttributesType */
@interface MPSEWSSidAndAttributesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSidAndAttributesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* attributes          /* xs:unsignedInt */;
@property (strong) NSString* securityIdentifier  /* xs:string */;


@end

