#import <Foundation/Foundation.h>






/* ConstantValueType */
@interface EWSConstantValueType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

