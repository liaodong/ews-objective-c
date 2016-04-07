#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* UserMailboxType */
@interface MPSEWSUserMailboxType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserMailboxType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSNumber* isArchive  /* xs:boolean */;


@end

