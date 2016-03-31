#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* EmailAddressDictionaryEntryType */
@interface MPSEWSEmailAddressDictionaryEntryType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEmailAddressDictionaryEntryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key          /* MPSEWSEmailAddressKeyType */;
@property (strong) NSString* name         /* xs:string */;
@property (strong) NSString* routingType  /* xs:string */;
@property (strong) NSString* mailboxType  /* MPSEWSMailboxTypeType */;


@end

