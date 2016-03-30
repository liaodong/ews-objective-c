#import <Foundation/Foundation.h>






/* ExcludesValueType */
@interface MPSEWSExcludesValueType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExcludesValueType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* MPSEWSExcludesAttributeType */;


@end

