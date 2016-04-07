#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* NonEmptyArrayOfPropertyValuesType */
@interface MPSEWSNonEmptyArrayOfPropertyValuesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPropertyValuesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* xs:string */;


- (void) addValue:(NSString*) elem;
@end

