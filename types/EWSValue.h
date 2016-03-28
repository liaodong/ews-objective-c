#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* Value */
@interface EWSValue : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;


@end

