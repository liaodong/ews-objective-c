#import <Foundation/Foundation.h>

#import "MPSEWSSyncFolderItemsScopeType.h"
@implementation MPSEWSSyncFolderItemsScopeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSSyncFolderItemsScopeType NormalItems], 
                                         [MPSEWSSyncFolderItemsScopeType NormalAndAssociatedItems], nil];
    [[[MPSEWSSyncFolderItemsScopeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSyncFolderItemsScopeType class]];
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

+ (NSString *) NormalItems { return @"NormalItems"; }
+ (NSString *) NormalAndAssociatedItems { return @"NormalAndAssociatedItems"; }
@end

