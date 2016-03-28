#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* ImAddressDictionaryEntryType */
@interface MPSEWSImAddressDictionaryEntryType : MPSEWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* MPSEWSImAddressKeyType */;


@end

