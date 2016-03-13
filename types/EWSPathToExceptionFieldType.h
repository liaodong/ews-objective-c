#import <Foundation/Foundation.h>




#import "../types/EWSExceptionPropertyURIType.h"
#import "EWSBasePathToElementType.h"



/* PathToExceptionFieldType */
@interface EWSPathToExceptionFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* fieldURI  /* EWSExceptionPropertyURIType */;


@end

