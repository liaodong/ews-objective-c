#import <Foundation/Foundation.h>
#import "EWSResponseObjectType.h"






/* PostReplyItemBaseType */
@interface EWSPostReplyItemBaseType : EWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

