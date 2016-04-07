#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfStringsType */
@interface MPSEWSArrayOfStringsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfStringsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* string /* xs:string */;


- (void) addString:(NSString*) elem;
@end

