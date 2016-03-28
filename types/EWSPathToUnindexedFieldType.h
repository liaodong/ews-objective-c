#import <Foundation/Foundation.h>
#import "EWSBasePathToElementType.h"






/* PathToUnindexedFieldType */
@interface EWSPathToUnindexedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI  /* EWSUnindexedFieldURIType */;


@end

