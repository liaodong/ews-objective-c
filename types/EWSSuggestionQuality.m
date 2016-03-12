#import <Foundation/Foundation.h>

#import "EWSSuggestionQuality.h"
@implementation EWSSuggestionQuality /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSSuggestionQuality Excellent], 
                                         [EWSSuggestionQuality Good], 
                                         [EWSSuggestionQuality Fair], 
                                         [EWSSuggestionQuality Poor], nil];
    [[[EWSSuggestionQuality alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSSuggestionQuality class]];
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

+ (NSString *) Excellent { return @"Excellent"; }
+ (NSString *) Good { return @"Good"; }
+ (NSString *) Fair { return @"Fair"; }
+ (NSString *) Poor { return @"Poor"; }
@end

