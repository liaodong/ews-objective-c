#import <Foundation/Foundation.h>
#import "EWSBasePathToElementType.h"






/* PathToExtendedFieldType */
@interface EWSPathToExtendedFieldType : EWSBasePathToElementType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* distinguishedPropertySetId  /* EWSDistinguishedPropertySetType */;
@property (strong) NSString* propertySetId               /* EWSGuidType */;
@property (strong) NSNumber* propertyTag                 /* EWSPropertyTagType */;
@property (strong) NSString* propertyName                /* xs:string */;
@property (strong) NSNumber* propertyId                  /* xs:int */;
@property (strong) NSString* propertyType                /* EWSMapiPropertyTypeType */;


@end

