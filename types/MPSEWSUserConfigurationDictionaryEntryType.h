#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUserConfigurationDictionaryObjectType;



/* UserConfigurationDictionaryEntryType */
@interface MPSEWSUserConfigurationDictionaryEntryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryEntryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationDictionaryObjectType* dictionaryKey;
@property (strong) MPSEWSUserConfigurationDictionaryObjectType* dictionaryValue;


@end

