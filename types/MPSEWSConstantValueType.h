#import <Foundation/Foundation.h>






/* ConstantValueType */
@interface MPSEWSConstantValueType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConstantValueType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

