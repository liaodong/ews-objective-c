#import <Foundation/Foundation.h>




#import "../types/EWSExcludesAttributeType.h"



/* ExcludesValueType */
@interface EWSExcludesValueType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* value  /* EWSExcludesAttributeType */;


@end

