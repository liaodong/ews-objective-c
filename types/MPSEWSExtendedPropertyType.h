#import <Foundation/Foundation.h>



@class MPSEWSPathToExtendedFieldType;



/* ExtendedPropertyType */
@interface MPSEWSExtendedPropertyType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPathToExtendedFieldType* extendedFieldURI;


@end

