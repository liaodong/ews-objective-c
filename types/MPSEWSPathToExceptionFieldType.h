#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToExceptionFieldType */
@interface MPSEWSPathToExceptionFieldType : MPSEWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* MPSEWSExceptionPropertyURIType */;


@end

