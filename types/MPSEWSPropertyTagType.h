#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** PropertyTagType 
  * This type represents the property tag (MINUS the type part).  There are two options
  * for representation:
  * 1. Hex ==> 0x3fa4
  * 2. Decimal ==> 0-65535
  */
@interface MPSEWSPropertyTagType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse PropertyTagType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;

/** Process the characters */
- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSNumber*) object;

@end

