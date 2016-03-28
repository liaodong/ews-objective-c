#import <Foundation/Foundation.h>
#import "MPSEWSBaseGroupByType.h"






/* DistinguishedGroupByType */
@interface MPSEWSDistinguishedGroupByType : MPSEWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* standardGroupBy  /* MPSEWSStandardGroupByType */;


@end

