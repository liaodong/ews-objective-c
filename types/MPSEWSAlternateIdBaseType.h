#import <Foundation/Foundation.h>






/* AlternateIdBaseType */
@interface MPSEWSAlternateIdBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAlternateIdBaseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* format  /* MPSEWSIdFormatType */;


@end

