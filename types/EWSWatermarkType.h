#import <Foundation/Foundation.h>

#import "EWSNonEmptyStringType.h"


/** SimpleType: WatermarkType is string  */
@interface EWSWatermarkType : EWSNonEmptyStringType 

/** Register a handler to parse WatermarkType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

@end

