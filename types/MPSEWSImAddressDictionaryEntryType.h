#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* ImAddressDictionaryEntryType */
@interface MPSEWSImAddressDictionaryEntryType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSImAddressDictionaryEntryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* MPSEWSImAddressKeyType */;


@end

