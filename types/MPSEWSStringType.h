#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSStringTypeHandler.h"

@interface MPSEWSStringType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;

@property (retain)  NSString* simpleContent    /* xs:string */;

@end

