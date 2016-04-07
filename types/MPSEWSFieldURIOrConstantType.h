#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSBasePathToElementType;
@class MPSEWSConstantValueType;



/* FieldURIOrConstantType */
@interface MPSEWSFieldURIOrConstantType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFieldURIOrConstantType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;
@property (strong) MPSEWSConstantValueType*     constant;


@end

