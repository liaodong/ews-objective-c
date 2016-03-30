#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* PhoneNumberDictionaryEntryType */
@interface MPSEWSPhoneNumberDictionaryEntryType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneNumberDictionaryEntryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* MPSEWSPhoneNumberKeyType */;


@end

