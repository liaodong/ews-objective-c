#import <Foundation/Foundation.h>
#import "EWSAlternateIdBaseType.h"






/* AlternateIdType */
@interface EWSAlternateIdType : EWSAlternateIdBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id       /* xs:string */;
@property (strong) NSString* mailbox  /* EWSNonEmptyStringType */;


@end

