#import <Foundation/Foundation.h>

#import "EWSImportanceChoicesType.h"
@implementation EWSImportanceChoicesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSImportanceChoicesType Low], 
                                         [EWSImportanceChoicesType Normal], 
                                         [EWSImportanceChoicesType High], nil];
    [[[EWSImportanceChoicesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSImportanceChoicesType class]];
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

+ (NSString *) Low { return @"Low"; }
+ (NSString *) Normal { return @"Normal"; }
+ (NSString *) High { return @"High"; }
@end

