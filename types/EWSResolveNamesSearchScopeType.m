#import <Foundation/Foundation.h>

#import "EWSResolveNamesSearchScopeType.h"
@implementation EWSResolveNamesSearchScopeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSResolveNamesSearchScopeType ActiveDirectory], 
                                         [EWSResolveNamesSearchScopeType ActiveDirectoryContacts], 
                                         [EWSResolveNamesSearchScopeType Contacts], 
                                         [EWSResolveNamesSearchScopeType ContactsActiveDirectory], nil];
    [[[EWSResolveNamesSearchScopeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSResolveNamesSearchScopeType class]];
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

