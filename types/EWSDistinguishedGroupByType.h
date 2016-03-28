#import <Foundation/Foundation.h>
#import "EWSBaseGroupByType.h"






/* DistinguishedGroupByType */
@interface EWSDistinguishedGroupByType : EWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* standardGroupBy  /* EWSStandardGroupByType */;


@end

