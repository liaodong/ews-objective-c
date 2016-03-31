#import <Foundation/Foundation.h>

#import "MPSEWSCreateActionType.h"
@implementation MPSEWSCreateActionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSCreateActionType CreateNew], 
                                         [MPSEWSCreateActionType Update], 
                                         [MPSEWSCreateActionType UpdateOrCreate], nil];
    [[[MPSEWSCreateActionType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSCreateActionType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) CreateNew { return @"CreateNew"; }
+ (NSString *) Update { return @"Update"; }
+ (NSString *) UpdateOrCreate { return @"UpdateOrCreate"; }
@end

