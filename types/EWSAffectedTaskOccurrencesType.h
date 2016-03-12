#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: AffectedTaskOccurrencesType can be one of the following:
 *       1 AllOccurrences
 *       2 SpecifiedOccurrenceOnly
 */
@interface EWSAffectedTaskOccurrencesType : EWSSimpleTypeHandler 

/** Register a handler to parse AffectedTaskOccurrencesType */
+ (void) initialize;

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

