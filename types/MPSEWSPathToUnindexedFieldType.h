#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToUnindexedFieldType */
@interface MPSEWSPathToUnindexedFieldType : MPSEWSBasePathToElementType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPathToUnindexedFieldType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* MPSEWSUnindexedFieldURIType */;


@end

