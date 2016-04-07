#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSPhoneNumberDictionaryEntryType;



/* PhoneNumberDictionaryType */
@interface MPSEWSPhoneNumberDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneNumberDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPhoneNumberDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSPhoneNumberDictionaryEntryType*) elem;
@end

