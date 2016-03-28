#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* Value */
@interface MPSEWSValue : MPSEWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;


@end

