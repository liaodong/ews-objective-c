#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSUnsignedIntTypeHandler.h"



/* SidAndAttributesType */
@interface EWSSidAndAttributesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* attributes          /* xs:unsignedInt */;
@property (retain) NSString* securityIdentifier  /* xs:string */;


@end

