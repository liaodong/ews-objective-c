#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* BodyType */
@interface EWSBodyType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* bodyType  /* EWSBodyTypeType */;


@end

