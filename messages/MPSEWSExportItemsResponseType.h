#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* ExportItemsResponseType */
@interface MPSEWSExportItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExportItemsResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

