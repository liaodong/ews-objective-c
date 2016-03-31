#import <Foundation/Foundation.h>






/* ArrayOfItemClassType */
@interface MPSEWSArrayOfItemClassType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfItemClassType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* itemClass /* MPSEWSItemClassType */;


- (void) addItemClass:(NSString*) elem;
@end

