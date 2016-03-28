#import <Foundation/Foundation.h>

#import "MPSEWSParserDelegate.h"

@interface MPSEWSDocumentHandler : MPSEWSParserDelegate

+ (void) initialize;

+ (id)   toObj:(NSString*) xml;
+ (void) toXml:(id) obj buffer:(NSMutableString*)buffer;

- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char)ns;

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns;

- (id) result;
@end
