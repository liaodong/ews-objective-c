#import <Foundation/Foundation.h>
#import "MPSEWSBasePagingType.h"






/* FractionalPageViewType */
@interface MPSEWSFractionalPageViewType : MPSEWSBasePagingType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFractionalPageViewType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numerator    /* xs:int */;
@property (strong) NSNumber* denominator  /* xs:int */;


@end

