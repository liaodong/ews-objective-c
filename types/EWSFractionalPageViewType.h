#import <Foundation/Foundation.h>
#import "EWSBasePagingType.h"






/* FractionalPageViewType */
@interface EWSFractionalPageViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numerator    /* xs:int */;
@property (strong) NSNumber* denominator  /* xs:int */;


@end

