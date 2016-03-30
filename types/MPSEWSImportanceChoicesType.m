#import <Foundation/Foundation.h>

#import "MPSEWSImportanceChoicesType.h"
@implementation MPSEWSImportanceChoicesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSImportanceChoicesType Low], 
                                         [MPSEWSImportanceChoicesType Normal], 
                                         [MPSEWSImportanceChoicesType High], nil];
    [[[MPSEWSImportanceChoicesType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSImportanceChoicesType class]];
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

+ (NSString *) Low { return @"Low"; }
+ (NSString *) Normal { return @"Normal"; }
+ (NSString *) High { return @"High"; }
@end

