#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: LegacyFreeBusyType can be one of the following:
 *       1 Free
 *       2 Tentative
 *       3 Busy
 *       4 OOF
 *       5 NoData
 */
@interface MPSEWSLegacyFreeBusyType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse LegacyFreeBusyType */
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
+ (NSString *) Free;
+ (NSString *) Tentative;
+ (NSString *) Busy;
+ (NSString *) OOF;
+ (NSString *) NoData;
@end

