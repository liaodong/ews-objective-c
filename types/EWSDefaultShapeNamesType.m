#import <Foundation/Foundation.h>

#import "EWSDefaultShapeNamesType.h"
@implementation EWSDefaultShapeNamesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDefaultShapeNamesType IdOnly], 
                                         [EWSDefaultShapeNamesType Default], 
                                         [EWSDefaultShapeNamesType AllProperties], nil];
    [[[EWSDefaultShapeNamesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDefaultShapeNamesType class]];
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

