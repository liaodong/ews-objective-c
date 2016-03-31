#import <Foundation/Foundation.h>

#import "MPSEWSFreeBusyViewType.h"
@implementation MPSEWSFreeBusyViewType 

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:@"None", @"MergedOnly", @"FreeBusy", @"FreeBusyMerged", @"Detailed", @"DetailedMerged", nil];
    [[[MPSEWSFreeBusyViewType alloc] init] register];
}
+ (BOOL) isValid:(NSArray*) val
{
    for (NSString* obj  in val) {
        if (![enumerations containsObject:obj]) return FALSE;
    }
    return TRUE;
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

@end

