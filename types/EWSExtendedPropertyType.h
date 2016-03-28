#import <Foundation/Foundation.h>



@class EWSPathToExtendedFieldType;



/* ExtendedPropertyType */
@interface EWSExtendedPropertyType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSPathToExtendedFieldType* extendedFieldURI;


@end

