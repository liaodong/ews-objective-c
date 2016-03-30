#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyItemType.h"






/* CopyItemType */
@interface MPSEWSCopyItemType : MPSEWSBaseMoveCopyItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

