#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyItemType.h"






/* CopyItemType */
@interface MPSEWSCopyItemType : MPSEWSBaseMoveCopyItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

