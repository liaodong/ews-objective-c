#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* Value */
@interface MPSEWSValue : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSValue*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;


@end

