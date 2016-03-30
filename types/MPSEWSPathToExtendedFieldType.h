#import <Foundation/Foundation.h>
#import "MPSEWSBasePathToElementType.h"






/* PathToExtendedFieldType */
@interface MPSEWSPathToExtendedFieldType : MPSEWSBasePathToElementType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPathToExtendedFieldType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* distinguishedPropertySetId  /* MPSEWSDistinguishedPropertySetType */;
@property (strong) NSString* propertySetId               /* MPSEWSGuidType */;
@property (strong) NSNumber* propertyTag                 /* MPSEWSPropertyTagType */;
@property (strong) NSString* propertyName                /* xs:string */;
@property (strong) NSNumber* propertyId                  /* xs:int */;
@property (strong) NSString* propertyType                /* MPSEWSMapiPropertyTypeType */;


@end

