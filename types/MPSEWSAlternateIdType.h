#import <Foundation/Foundation.h>
#import "MPSEWSAlternateIdBaseType.h"






/* AlternateIdType */
@interface MPSEWSAlternateIdType : MPSEWSAlternateIdBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAlternateIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id       /* xs:string */;
@property (strong) NSString* mailbox  /* MPSEWSNonEmptyStringType */;


@end

