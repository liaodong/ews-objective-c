#import <Foundation/Foundation.h>

#import "EWSSortDirectionType.h"
@implementation EWSSortDirectionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSSortDirectionType Ascending], 
                                         [EWSSortDirectionType Descending], nil];
    [[[EWSSortDirectionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSSortDirectionType class]];
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

+ (NSString *) Ascending { return @"Ascending"; }
+ (NSString *) Descending { return @"Descending"; }
@end

