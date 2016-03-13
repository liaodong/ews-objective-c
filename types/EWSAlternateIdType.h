#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSNonEmptyStringType.h"
#import "EWSAlternateIdBaseType.h"



/* AlternateIdType */
@interface EWSAlternateIdType : EWSAlternateIdBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* id       /* xs:string */;
@property (retain) NSString* mailbox  /* EWSNonEmptyStringType */;


@end

