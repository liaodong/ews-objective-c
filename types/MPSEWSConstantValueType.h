#import <Foundation/Foundation.h>






/* ConstantValueType */
@interface MPSEWSConstantValueType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

