#import <Foundation/Foundation.h>
#import "EWSBaseEmailAddressType.h"



@class EWSItemIdType;



/* EmailAddressType */
@interface EWSEmailAddressType : EWSBaseEmailAddressType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*      name          /* xs:string */;
@property (strong) NSString*      emailAddress  /* EWSNonEmptyStringType */;
@property (strong) NSString*      routingType   /* EWSNonEmptyStringType */;
@property (strong) NSString*      mailboxType   /* EWSMailboxTypeType */;
@property (strong) EWSItemIdType* itemId;


@end

