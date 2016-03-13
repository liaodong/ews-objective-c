#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* ConstantValueType */
@interface EWSConstantValueType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* value  /* xs:string */;


@end

