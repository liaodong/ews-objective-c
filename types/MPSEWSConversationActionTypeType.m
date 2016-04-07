#import <Foundation/Foundation.h>

#import "MPSEWSConversationActionTypeType.h"
@implementation MPSEWSConversationActionTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSConversationActionTypeType AlwaysCategorize], 
                                         [MPSEWSConversationActionTypeType AlwaysDelete], 
                                         [MPSEWSConversationActionTypeType AlwaysMove], 
                                         [MPSEWSConversationActionTypeType Delete], 
                                         [MPSEWSConversationActionTypeType Move], 
                                         [MPSEWSConversationActionTypeType Copy], 
                                         [MPSEWSConversationActionTypeType SetReadState], nil];
    [[[MPSEWSConversationActionTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSConversationActionTypeType class]];
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

+ (NSString *) AlwaysCategorize { return @"AlwaysCategorize"; }
+ (NSString *) AlwaysDelete { return @"AlwaysDelete"; }
+ (NSString *) AlwaysMove { return @"AlwaysMove"; }
+ (NSString *) Delete { return @"Delete"; }
+ (NSString *) Move { return @"Move"; }
+ (NSString *) Copy { return @"Copy"; }
+ (NSString *) SetReadState { return @"SetReadState"; }
@end

