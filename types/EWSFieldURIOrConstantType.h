#import <Foundation/Foundation.h>



@class EWSBasePathToElementType;
@class EWSConstantValueType;



/* FieldURIOrConstantType */
@interface EWSFieldURIOrConstantType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType* path;
@property (strong) EWSConstantValueType*     constant;


@end

