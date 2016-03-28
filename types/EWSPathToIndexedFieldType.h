#import <Foundation/Foundation.h>
#import "EWSBasePathToElementType.h"






/* PathToIndexedFieldType */
@interface EWSPathToIndexedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* fieldURI    /* EWSDictionaryURIType */;
@property (strong) NSString* fieldIndex  /* xs:string */;


@end

