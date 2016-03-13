#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSMailboxTypeType.h"
#import "../types/EWSNonEmptyStringType.h"
#import "EWSBaseEmailAddressType.h"



/* EmailAddressType */
@interface EWSEmailAddressType : EWSBaseEmailAddressType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*      name          /* xs:string */;
@property (retain) NSString*      emailAddress  /* EWSNonEmptyStringType */;
@property (retain) NSString*      routingType   /* EWSNonEmptyStringType */;
@property (retain) NSString*      mailboxType   /* EWSMailboxTypeType */;
@property (retain) EWSItemIdType* itemId;


@end

