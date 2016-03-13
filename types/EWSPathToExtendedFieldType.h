#import <Foundation/Foundation.h>




#import "EWSDistinguishedPropertySetType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "EWSMapiPropertyTypeType.h"
#import "EWSPropertyTagType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSGuidType.h"
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

