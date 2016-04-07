#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** SimpleType: FreeBusyViewType can be one of the following:
 *       1 None
 *       2 MergedOnly
 *       3 FreeBusy
 *       4 FreeBusyMerged
 *       5 Detailed
 *       6 DetailedMerged
 */
@interface MPSEWSFreeBusyViewType : MPSEWSEnumeratedListTypeHandler 

/** Register a handler to parse FreeBusyViewType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;


/* Valid values */
+ (NSString *) None;
+ (NSString *) MergedOnly;
+ (NSString *) FreeBusy;
+ (NSString *) FreeBusyMerged;
+ (NSString *) Detailed;
+ (NSString *) DetailedMerged;
@end

