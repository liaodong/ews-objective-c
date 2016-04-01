#import <Foundation/Foundation.h>

@protocol MPSEWSHandlerProtocol <NSObject>

/** Update object, when parsing embedded non-EWS xml */
- (id) updateObject:(id)obj startElement:(NSString*) elementName namespace:(NSString*) namespaceURI attributes:(NSDictionary*) attributeDict;

/** Update object, when parsing embedded non-EWS xml */
- (id) updateObject:(id)obj endElement:(NSString*) elementName namespace:(NSString*) namespaceURI;

/** Object construction from XML document */
- (id) constructWithAttributes: (NSDictionary *)attributes;

/** Handling of characters in the XML document. */
- (id) updateObject:(id)obj withCharacters:(NSString*)s;

/** Handling of subelements */
- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char) ns  withValue:(id)v;

/** Update the object, if required just before assigning it to the result (or parent)
 *  Currently, only place this is used, is for non-EWS xml data. For rest it is a noop
 */
- (id) updateObjectBeforeAssignment:(id) obj;

/** The handler for a sub tag. */
- (id<MPSEWSHandlerProtocol>) handlerForElement:(NSString*) elementName namespace:(char) ns;

/** XML String generation from Object representation, indent should be nil for compact representation */
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent;

/** Should we parse and create objects or just create the XML structure. */
- (BOOL) parse;

@end

