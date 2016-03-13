#import <Foundation/Foundation.h>




#import "EWSBodyTypeType.h"
#import "EWSStringType.h"



/* BodyType */
@interface EWSBodyType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* bodyType  /* EWSBodyTypeType */;


@end

