#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToUnindexedFieldType */
@interface MPSEWSPathToUnindexedFieldType : MPSEWSBasePathToElementType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPathToUnindexedFieldType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* MPSEWSUnindexedFieldURIType */;


@end

