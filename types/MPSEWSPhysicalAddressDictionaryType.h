#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSPhysicalAddressDictionaryEntryType;



/* PhysicalAddressDictionaryType */
@interface MPSEWSPhysicalAddressDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhysicalAddressDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPhysicalAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSPhysicalAddressDictionaryEntryType*) elem;
@end

