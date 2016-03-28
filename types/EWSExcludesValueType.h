#import <Foundation/Foundation.h>






/* ExcludesValueType */
@interface EWSExcludesValueType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* EWSExcludesAttributeType */;


@end

