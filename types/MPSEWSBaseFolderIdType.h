#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseFolderIdType */
@interface MPSEWSBaseFolderIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseFolderIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

