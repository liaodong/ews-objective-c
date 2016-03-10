#import <Foundation/Foundation.h>

@protocol EWSHandlerProtocol <NSObject>

- (id) constructWithAttributes: (NSDictionary *)attributes;

- (id) updateObject:(id)obj withCharacters:(NSString*)s;

- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v;

- (id<EWSHandlerProtocol>) handlerForElement:(NSString*) elementName;

@end

