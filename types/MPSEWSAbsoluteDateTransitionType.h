#import <Foundation/Foundation.h>
#import "MPSEWSTransitionType.h"






/* AbsoluteDateTransitionType */
@interface MPSEWSAbsoluteDateTransitionType : MPSEWSTransitionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAbsoluteDateTransitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* dateTime  /* xs:dateTime */;


@end

