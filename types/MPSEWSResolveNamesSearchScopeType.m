#import <Foundation/Foundation.h>

#import "MPSEWSResolveNamesSearchScopeType.h"
@implementation MPSEWSResolveNamesSearchScopeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSResolveNamesSearchScopeType ActiveDirectory], 
                                         [MPSEWSResolveNamesSearchScopeType ActiveDirectoryContacts], 
                                         [MPSEWSResolveNamesSearchScopeType Contacts], 
                                         [MPSEWSResolveNamesSearchScopeType ContactsActiveDirectory], nil];
    [[[MPSEWSResolveNamesSearchScopeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSResolveNamesSearchScopeType class]];
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

+ (NSString *) ActiveDirectory { return @"ActiveDirectory"; }
+ (NSString *) ActiveDirectoryContacts { return @"ActiveDirectoryContacts"; }
+ (NSString *) Contacts { return @"Contacts"; }
+ (NSString *) ContactsActiveDirectory { return @"ContactsActiveDirectory"; }
@end

