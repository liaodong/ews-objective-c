#import <Foundation/Foundation.h>



@class MPSEWSUserConfigurationDictionaryObjectType;



/* UserConfigurationDictionaryEntryType */
@interface MPSEWSUserConfigurationDictionaryEntryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryEntryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationDictionaryObjectType* dictionaryKey;
@property (strong) MPSEWSUserConfigurationDictionaryObjectType* dictionaryValue;


@end

