#import <Foundation/Foundation.h>






/* NonEmptyArrayOfPropertyValuesType */
@interface EWSNonEmptyArrayOfPropertyValuesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* xs:string */;


- (void) addValue:(NSString*) elem;
@end

