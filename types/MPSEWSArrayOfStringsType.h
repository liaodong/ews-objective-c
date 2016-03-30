#import <Foundation/Foundation.h>






/* ArrayOfStringsType */
@interface MPSEWSArrayOfStringsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfStringsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* string /* xs:string */;


- (void) addString:(NSString*) elem;
@end

