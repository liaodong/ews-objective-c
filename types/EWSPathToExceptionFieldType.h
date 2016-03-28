#import <Foundation/Foundation.h>
#import "EWSBasePathToElementType.h"






/* PathToExceptionFieldType */
@interface EWSPathToExceptionFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* EWSExceptionPropertyURIType */;


@end

