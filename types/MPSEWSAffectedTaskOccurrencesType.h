#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: AffectedTaskOccurrencesType can be one of the following:
 *       1 AllOccurrences
 *       2 SpecifiedOccurrenceOnly
 */
@interface MPSEWSAffectedTaskOccurrencesType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse AffectedTaskOccurrencesType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) AllOccurrences;
+ (NSString *) SpecifiedOccurrenceOnly;
@end

