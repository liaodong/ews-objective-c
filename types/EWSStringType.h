#import <Foundation/Foundation.h>

#import "../handlers/EWSStringTypeHandler.h"

@interface EWSStringType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;

@property (retain)  NSString* simpleContent    /* xs:string */;

@end

