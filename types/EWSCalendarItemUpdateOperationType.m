#import <Foundation/Foundation.h>

#import "EWSCalendarItemUpdateOperationType.h"
@implementation EWSCalendarItemUpdateOperationType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSCalendarItemUpdateOperationType SendToNone], 
                                         [EWSCalendarItemUpdateOperationType SendOnlyToAll], 
                                         [EWSCalendarItemUpdateOperationType SendOnlyToChanged], 
                                         [EWSCalendarItemUpdateOperationType SendToAllAndSaveCopy], 
                                         [EWSCalendarItemUpdateOperationType SendToChangedAndSaveCopy], nil];
    [[[EWSCalendarItemUpdateOperationType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSCalendarItemUpdateOperationType class]];
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

