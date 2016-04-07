#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* PostReplyItemBaseType */
@interface MPSEWSPostReplyItemBaseType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPostReplyItemBaseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

