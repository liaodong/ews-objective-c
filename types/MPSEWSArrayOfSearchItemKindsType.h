#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfSearchItemKindsType */
@interface MPSEWSArrayOfSearchItemKindsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSearchItemKindsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* searchItemKind /* MPSEWSSearchItemKindType */;


- (void) addSearchItemKind:(NSString*) elem;
@end

