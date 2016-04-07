#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToExceptionFieldType */
@interface MPSEWSPathToExceptionFieldType : MPSEWSBasePathToElementType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPathToExceptionFieldType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* MPSEWSExceptionPropertyURIType */;


@end

