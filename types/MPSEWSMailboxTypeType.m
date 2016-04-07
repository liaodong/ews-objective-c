#import <Foundation/Foundation.h>

#import "MPSEWSMailboxTypeType.h"
@implementation MPSEWSMailboxTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMailboxTypeType Unknown], 
                                         [MPSEWSMailboxTypeType OneOff], 
                                         [MPSEWSMailboxTypeType Mailbox], 
                                         [MPSEWSMailboxTypeType PublicDL], 
                                         [MPSEWSMailboxTypeType PrivateDL], 
                                         [MPSEWSMailboxTypeType Contact], 
                                         [MPSEWSMailboxTypeType PublicFolder], nil];
    [[[MPSEWSMailboxTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMailboxTypeType class]];
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

+ (NSString *) Unknown { return @"Unknown"; }
+ (NSString *) OneOff { return @"OneOff"; }
+ (NSString *) Mailbox { return @"Mailbox"; }
+ (NSString *) PublicDL { return @"PublicDL"; }
+ (NSString *) PrivateDL { return @"PrivateDL"; }
+ (NSString *) Contact { return @"Contact"; }
+ (NSString *) PublicFolder { return @"PublicFolder"; }
@end

