#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToIndexedFieldType */
@interface MPSEWSPathToIndexedFieldType : MPSEWSBasePathToElementType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPathToIndexedFieldType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI    /* MPSEWSDictionaryURIType */;
@property (strong) NSString* fieldIndex  /* xs:string */;


@end

