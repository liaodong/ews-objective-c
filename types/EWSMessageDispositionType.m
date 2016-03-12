#import <Foundation/Foundation.h>

#import "EWSMessageDispositionType.h"
@implementation EWSMessageDispositionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSMessageDispositionType SaveOnly], 
                                         [EWSMessageDispositionType SendOnly], 
                                         [EWSMessageDispositionType SendAndSaveCopy], nil];
    [[[EWSMessageDispositionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSMessageDispositionType class]];
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

+ (NSString *) SaveOnly { return @"SaveOnly"; }
+ (NSString *) SendOnly { return @"SendOnly"; }
+ (NSString *) SendAndSaveCopy { return @"SendAndSaveCopy"; }
@end

