#import <Foundation/Foundation.h>






/* ArrayOfBinaryType */
@interface MPSEWSArrayOfBinaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfBinaryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSData*>* base64Binary /* xs:base64Binary */;


- (void) addBase64Binary:(NSData*) elem;
@end

