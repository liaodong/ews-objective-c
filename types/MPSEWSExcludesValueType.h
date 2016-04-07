#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ExcludesValueType */
@interface MPSEWSExcludesValueType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExcludesValueType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* MPSEWSExcludesAttributeType */;


@end

