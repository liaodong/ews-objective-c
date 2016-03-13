#import <Foundation/Foundation.h>




#import "EWSIdFormatType.h"



/* AlternateIdBaseType */
@interface EWSAlternateIdBaseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* format  /* EWSIdFormatType */;


@end

