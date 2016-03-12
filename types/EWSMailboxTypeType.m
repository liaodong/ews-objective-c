#import <Foundation/Foundation.h>

#import "EWSMailboxTypeType.h"
@implementation EWSMailboxTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSMailboxTypeType Mailbox], 
                                         [EWSMailboxTypeType PublicDL], 
                                         [EWSMailboxTypeType PrivateDL], 
                                         [EWSMailboxTypeType Contact], 
                                         [EWSMailboxTypeType PublicFolder], nil];
    [[[EWSMailboxTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSMailboxTypeType class]];
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

+ (NSString *) Mailbox { return @"Mailbox"; }
+ (NSString *) PublicDL { return @"PublicDL"; }
+ (NSString *) PrivateDL { return @"PrivateDL"; }
+ (NSString *) Contact { return @"Contact"; }
+ (NSString *) PublicFolder { return @"PublicFolder"; }
@end

