#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* PhoneNumberDictionaryEntryType */
@interface EWSPhoneNumberDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* EWSPhoneNumberKeyType */;


@end

