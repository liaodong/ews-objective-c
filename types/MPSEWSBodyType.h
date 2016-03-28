#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* BodyType */
@interface MPSEWSBodyType : MPSEWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* bodyType  /* MPSEWSBodyTypeType */;


@end

