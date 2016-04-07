#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfItemClassType */
@interface MPSEWSArrayOfItemClassType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfItemClassType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* itemClass /* MPSEWSItemClassType */;


- (void) addItemClass:(NSString*) elem;
@end

