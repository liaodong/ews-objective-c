#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDictionaryURIType.h"
#import "EWSBasePathToElementType.h"



/* PathToIndexedFieldType */
@interface EWSPathToIndexedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* fieldURI    /* EWSDictionaryURIType */;
@property (retain) NSString* fieldIndex  /* xs:string */;


@end

