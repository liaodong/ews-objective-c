#import <Foundation/Foundation.h>
#import "EWSResponseObjectType.h"






/* WellKnownResponseObjectType */
@interface EWSWellKnownResponseObjectType : EWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

