#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUserConfigurationDictionaryEntryType;



/* UserConfigurationDictionaryType */
@interface MPSEWSUserConfigurationDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserConfigurationDictionaryEntryType*>* dictionaryEntry;


- (void) addDictionaryEntry:(MPSEWSUserConfigurationDictionaryEntryType*) elem;
@end

