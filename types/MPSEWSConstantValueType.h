#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ConstantValueType */
@interface MPSEWSConstantValueType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConstantValueType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

