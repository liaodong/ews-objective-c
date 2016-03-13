#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDistinguishedPropertySetType.h"
#import "../types/EWSGuidType.h"
#import "../types/EWSMapiPropertyTypeType.h"
#import "../types/EWSPropertyTagType.h"
#import "EWSBasePathToElementType.h"



/* PathToExtendedFieldType */
@interface EWSPathToExtendedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* distinguishedPropertySetId  /* EWSDistinguishedPropertySetType */;
@property (retain) NSString* propertySetId               /* EWSGuidType */;
@property (retain) NSNumber* propertyTag                 /* EWSPropertyTagType */;
@property (retain) NSString* propertyName                /* xs:string */;
@property (retain) NSNumber* propertyId                  /* xs:int */;
@property (retain) NSString* propertyType                /* EWSMapiPropertyTypeType */;


@end

