#import <Foundation/Foundation.h>




#import "EWSImAddressKeyType.h"
#import "EWSStringType.h"



/* ImAddressDictionaryEntryType */
@interface EWSImAddressDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* key    /* EWSImAddressKeyType */;


@end

