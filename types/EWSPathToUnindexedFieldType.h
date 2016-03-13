#import <Foundation/Foundation.h>




#import "../types/EWSUnindexedFieldURIType.h"
#import "EWSBasePathToElementType.h"



/* PathToUnindexedFieldType */
@interface EWSPathToUnindexedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* fieldURI  /* EWSUnindexedFieldURIType */;


@end

