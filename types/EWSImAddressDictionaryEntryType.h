#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* ImAddressDictionaryEntryType */
@interface EWSImAddressDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key    /* EWSImAddressKeyType */;


@end

