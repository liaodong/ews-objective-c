#import <Foundation/Foundation.h>




#import "EWSBaseMoveCopyItemType.h"



/* CopyItemType */
@interface EWSCopyItemType : EWSBaseMoveCopyItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

