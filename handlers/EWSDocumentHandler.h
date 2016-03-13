#import <Foundation/Foundation.h>

#import "EWSParserDelegate.h"

@interface EWSDocumentHandler : EWSParserDelegate

+ (void) initialize;

+ (id) fromXml:(NSString*) xml;

+ (void) toXml:(NSString*)root namespace:(char)ns  intoBuffer:(NSMutableString*)buffer theObject:(id)object;

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char)ns;

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns;

- (id) result;
@end
