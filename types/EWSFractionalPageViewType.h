#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSBasePagingType.h"



/* FractionalPageViewType */
@interface EWSFractionalPageViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* numerator    /* xs:int */;
@property (retain) NSNumber* denominator  /* xs:int */;


@end

