#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPropertyValuesType;
@class MPSEWSPathToExtendedFieldType;



/* ExtendedPropertyType */
@interface MPSEWSExtendedPropertyType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPathToExtendedFieldType*           extendedFieldURI;
@property (strong) NSString*                                value             /* xs:string */;
@property (strong) MPSEWSNonEmptyArrayOfPropertyValuesType* values;


@end

