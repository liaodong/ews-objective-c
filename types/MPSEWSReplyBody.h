#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ReplyBody */
@interface MPSEWSReplyBody : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReplyBody*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* message  /* xs:string */;


@end

