#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** FreeBusyViewType is a list ofcan be one of the following:
 *       1 None
 *       2 MergedOnly
 *       3 FreeBusy
 *       4 FreeBusyMerged
 *       5 Detailed
 *       6 DetailedMerged
 */
@interface MPSEWSFreeBusyViewType : MPSEWSEnumeratedListTypeHandler

/** Register a handler to parse DaysOfWeekType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

@end

