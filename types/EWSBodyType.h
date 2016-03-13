#import <Foundation/Foundation.h>




#import "../types/EWSBodyTypeType.h"
#import "EWSStringType.h"



/* BodyType */
@interface EWSBodyType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* bodyType  /* EWSBodyTypeType */;


@end

