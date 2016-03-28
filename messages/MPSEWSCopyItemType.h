#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyItemType.h"






/* CopyItemType */
@interface MPSEWSCopyItemType : MPSEWSBaseMoveCopyItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

