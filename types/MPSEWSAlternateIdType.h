#import <Foundation/Foundation.h>
#import "MPSEWSAlternateIdBaseType.h"






/* AlternateIdType */
@interface MPSEWSAlternateIdType : MPSEWSAlternateIdBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAlternateIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSString* mailbox    /* MPSEWSNonEmptyStringType */;
@property (strong) NSNumber* isArchive  /* xs:boolean */;


@end

