#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfPropertyValuesType;
@class MPSEWSPathToExtendedFieldType;



/* ExtendedPropertyType */
@interface MPSEWSExtendedPropertyType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExtendedPropertyType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPathToExtendedFieldType*           extendedFieldURI;
@property (strong) NSString*                                value             /* xs:string */;
@property (strong) MPSEWSNonEmptyArrayOfPropertyValuesType* values;


@end

