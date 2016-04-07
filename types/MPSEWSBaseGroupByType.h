#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseGroupByType */
@interface MPSEWSBaseGroupByType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseGroupByType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* order  /* MPSEWSSortDirectionType */;


@end

