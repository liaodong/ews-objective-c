#import <Foundation/Foundation.h>

@interface EWSStringType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;

@property (retain)  NSString* simpleContent    /* xs:string */;

@end

