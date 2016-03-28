#import <Foundation/Foundation.h>
#import "EWSResponseObjectType.h"






/* SmartResponseBaseType */
@interface EWSSmartResponseBaseType : EWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

