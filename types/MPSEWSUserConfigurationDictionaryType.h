#import <Foundation/Foundation.h>



@class MPSEWSUserConfigurationDictionaryEntryType;



/* UserConfigurationDictionaryType */
@interface MPSEWSUserConfigurationDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserConfigurationDictionaryEntryType*>* dictionaryEntry;


- (void) addDictionaryEntry:(MPSEWSUserConfigurationDictionaryEntryType*) elem;
@end

