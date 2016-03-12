#import <Foundation/Foundation.h>

#import "EWSDisposalType.h"
@implementation EWSDisposalType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDisposalType HardDelete], 
                                         [EWSDisposalType SoftDelete], 
                                         [EWSDisposalType MoveToDeletedItems], nil];
    [[[EWSDisposalType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDisposalType class]];
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

+ (NSString *) HardDelete { return @"HardDelete"; }
+ (NSString *) SoftDelete { return @"SoftDelete"; }
+ (NSString *) MoveToDeletedItems { return @"MoveToDeletedItems"; }
@end

