#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSImAddressDictionaryEntryType;



/* ImAddressDictionaryType */
@interface MPSEWSImAddressDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSImAddressDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSImAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSImAddressDictionaryEntryType*) elem;
@end

