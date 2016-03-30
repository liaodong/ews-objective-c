#import <Foundation/Foundation.h>



@class MPSEWSPhoneNumberDictionaryEntryType;



/* PhoneNumberDictionaryType */
@interface MPSEWSPhoneNumberDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneNumberDictionaryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPhoneNumberDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSPhoneNumberDictionaryEntryType*) elem;
@end

