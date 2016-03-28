#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* EmailAddressDictionaryEntryType */
@interface EWSEmailAddressDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* EWSEmailAddressKeyType */;


@end

