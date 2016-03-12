#import <Foundation/Foundation.h>

@interface EWSBase64BinaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;

@property (retain)  NSString* simpleContent    /* xs:base64Binary */;

@end

