#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfUnknownEntriesType */
@interface MPSEWSArrayOfUnknownEntriesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUnknownEntriesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* unknownEntry /* xs:string */;


- (void) addUnknownEntry:(NSString*) elem;
@end

