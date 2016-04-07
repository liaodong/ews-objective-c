#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSBasePathToElementType;



/* FieldOrderType */
@interface MPSEWSFieldOrderType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFieldOrderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                    order  /* MPSEWSSortDirectionType */;
@property (strong) MPSEWSBasePathToElementType* path;


@end

