#import <Foundation/Foundation.h>
#import "MPSEWSBaseGroupByType.h"






/* DistinguishedGroupByType */
@interface MPSEWSDistinguishedGroupByType : MPSEWSBaseGroupByType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDistinguishedGroupByType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* standardGroupBy  /* MPSEWSStandardGroupByType */;


@end

