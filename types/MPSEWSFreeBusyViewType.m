#import <Foundation/Foundation.h>

#import "MPSEWSFreeBusyViewType.h"
@implementation MPSEWSFreeBusyViewType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSFreeBusyViewType None], 
                                         [MPSEWSFreeBusyViewType MergedOnly], 
                                         [MPSEWSFreeBusyViewType FreeBusy], 
                                         [MPSEWSFreeBusyViewType FreeBusyMerged], 
                                         [MPSEWSFreeBusyViewType Detailed], 
                                         [MPSEWSFreeBusyViewType DetailedMerged], nil];
    [[[MPSEWSFreeBusyViewType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSFreeBusyViewType class] andValues:enumerations];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls andValues:enumerations];
    return self;
}

+ (NSString *) None { return @"None"; }
+ (NSString *) MergedOnly { return @"MergedOnly"; }
+ (NSString *) FreeBusy { return @"FreeBusy"; }
+ (NSString *) FreeBusyMerged { return @"FreeBusyMerged"; }
+ (NSString *) Detailed { return @"Detailed"; }
+ (NSString *) DetailedMerged { return @"DetailedMerged"; }
@end

