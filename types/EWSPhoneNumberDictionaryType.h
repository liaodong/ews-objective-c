#import <Foundation/Foundation.h>



@class EWSPhoneNumberDictionaryEntryType;



/* PhoneNumberDictionaryType */
@interface EWSPhoneNumberDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSPhoneNumberDictionaryEntryType*>* entry;


- (void) addEntry:(EWSPhoneNumberDictionaryEntryType*) elem;
@end

