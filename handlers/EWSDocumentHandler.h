#import <Foundation/Foundation.h>

#import "EWSParserDelegate.h"

@interface EWSDocumentHandler : EWSParserDelegate

+ (void) initialize;

+ (id) fromXml:(NSString*) xml;

+ (void) toXml:(NSString*)root intoBuffer:(NSMutableString*)buffer theObject:(id)object;

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName;
- (void) populateValue:(id) value forKey: (NSString*) tag;

- (id) result;
@end
