#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* EmailAddressDictionaryEntryType */
@interface MPSEWSEmailAddressDictionaryEntryType : MPSEWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* MPSEWSEmailAddressKeyType */;


@end

