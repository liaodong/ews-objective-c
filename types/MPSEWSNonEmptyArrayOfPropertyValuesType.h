#import <Foundation/Foundation.h>






/* NonEmptyArrayOfPropertyValuesType */
@interface MPSEWSNonEmptyArrayOfPropertyValuesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPropertyValuesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* xs:string */;


- (void) addValue:(NSString*) elem;
@end

