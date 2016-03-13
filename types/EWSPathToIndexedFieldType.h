#import <Foundation/Foundation.h>




#import "EWSDictionaryURIType.h"
#import "../handlers/EWSStringTypeHandler.h"
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

