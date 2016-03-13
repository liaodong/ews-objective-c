#import <Foundation/Foundation.h>




#import "../types/EWSPathToExtendedFieldType.h"



/* ExtendedPropertyType */
@interface EWSExtendedPropertyType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSPathToExtendedFieldType* extendedFieldURI;


@end

