#import <Foundation/Foundation.h>

#import "EWSParserDelegate.h"

@interface EWSDocumentHandler : EWSParserDelegate

+ (void) initialize;

+ (id)   toObj:(NSString*) xml;
+ (void) toXml:(id) obj buffer:(NSMutableString*)buffer;

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char)ns;

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns;

- (id) result;
@end
