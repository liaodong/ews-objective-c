#import <Foundation/Foundation.h>

#import "MPSEWSDefaultShapeNamesType.h"
@implementation MPSEWSDefaultShapeNamesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSDefaultShapeNamesType IdOnly], 
                                         [MPSEWSDefaultShapeNamesType Default], 
                                         [MPSEWSDefaultShapeNamesType AllProperties], nil];
    [[[MPSEWSDefaultShapeNamesType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDefaultShapeNamesType class]];
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

+ (NSString *) IdOnly { return @"IdOnly"; }
+ (NSString *) Default { return @"Default"; }
+ (NSString *) AllProperties { return @"AllProperties"; }
@end

