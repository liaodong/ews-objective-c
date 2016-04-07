#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* NonEmptyArrayOfTimeZoneIdType */
@interface MPSEWSNonEmptyArrayOfTimeZoneIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfTimeZoneIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* id    /* xs:string */;


- (void) addId:(NSString*) elem;
@end

