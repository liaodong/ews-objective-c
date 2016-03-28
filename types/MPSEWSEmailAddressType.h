#import <Foundation/Foundation.h>
#import "MPSEWSBaseEmailAddressType.h"



@class MPSEWSItemIdType;



/* EmailAddressType */
@interface MPSEWSEmailAddressType : MPSEWSBaseEmailAddressType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*         name          /* xs:string */;
@property (strong) NSString*         emailAddress  /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*         routingType   /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*         mailboxType   /* MPSEWSMailboxTypeType */;
@property (strong) MPSEWSItemIdType* itemId;


@end

