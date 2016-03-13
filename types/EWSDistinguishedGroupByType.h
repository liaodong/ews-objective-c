#import <Foundation/Foundation.h>




#import "../types/EWSStandardGroupByType.h"
#import "EWSBaseGroupByType.h"



/* DistinguishedGroupByType */
@interface EWSDistinguishedGroupByType : EWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* standardGroupBy  /* EWSStandardGroupByType */;


@end

