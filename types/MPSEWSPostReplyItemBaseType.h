#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* PostReplyItemBaseType */
@interface MPSEWSPostReplyItemBaseType : MPSEWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

