#import <Foundation/Foundation.h>




#import "../types/EWSPhoneNumberKeyType.h"
#import "EWSStringType.h"



/* PhoneNumberDictionaryEntryType */
@interface EWSPhoneNumberDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* key    /* EWSPhoneNumberKeyType */;


@end

