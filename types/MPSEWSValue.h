#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* Value */
@interface MPSEWSValue : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSValue*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;


@end

