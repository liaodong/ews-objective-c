#import <Foundation/Foundation.h>

#import "MPSEWSCalendarItemUpdateOperationType.h"
@implementation MPSEWSCalendarItemUpdateOperationType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSCalendarItemUpdateOperationType SendToNone], 
                                         [MPSEWSCalendarItemUpdateOperationType SendOnlyToAll], 
                                         [MPSEWSCalendarItemUpdateOperationType SendOnlyToChanged], 
                                         [MPSEWSCalendarItemUpdateOperationType SendToAllAndSaveCopy], 
                                         [MPSEWSCalendarItemUpdateOperationType SendToChangedAndSaveCopy], nil];
    [[[MPSEWSCalendarItemUpdateOperationType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSCalendarItemUpdateOperationType class]];
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

+ (NSString *) SendToNone { return @"SendToNone"; }
+ (NSString *) SendOnlyToAll { return @"SendOnlyToAll"; }
+ (NSString *) SendOnlyToChanged { return @"SendOnlyToChanged"; }
+ (NSString *) SendToAllAndSaveCopy { return @"SendToAllAndSaveCopy"; }
+ (NSString *) SendToChangedAndSaveCopy { return @"SendToChangedAndSaveCopy"; }
@end

