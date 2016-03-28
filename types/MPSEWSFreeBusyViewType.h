#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** FreeBusyViewType is a list ofcan be one of the following:
 *       1 None
 *       2 MergedOnly
 *       3 FreeBusy
 *       4 FreeBusyMerged
 *       5 Detailed
 *       6 DetailedMerged
 */
@interface MPSEWSFreeBusyViewType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DaysOfWeekType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** construct an empty list */
- (NSMutableArray*) construct;

/** Process the characters */
- (NSMutableArray *) updateObject:(NSMutableArray *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSMutableArray *) object;

@end

