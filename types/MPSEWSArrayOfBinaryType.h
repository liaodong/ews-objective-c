#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfBinaryType */
@interface MPSEWSArrayOfBinaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfBinaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSData*>* base64Binary /* xs:base64Binary */;


- (void) addBase64Binary:(NSData*) elem;
@end

