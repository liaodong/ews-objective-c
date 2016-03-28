#import <Foundation/Foundation.h>






/* AlternateIdBaseType */
@interface EWSAlternateIdBaseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* format  /* EWSIdFormatType */;


@end

