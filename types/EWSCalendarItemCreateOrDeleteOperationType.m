#import <Foundation/Foundation.h>

#import "EWSCalendarItemCreateOrDeleteOperationType.h"
@implementation EWSCalendarItemCreateOrDeleteOperationType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSCalendarItemCreateOrDeleteOperationType SendToNone], 
                                         [EWSCalendarItemCreateOrDeleteOperationType SendOnlyToAll], 
                                         [EWSCalendarItemCreateOrDeleteOperationType SendToAllAndSaveCopy], nil];
    [[[EWSCalendarItemCreateOrDeleteOperationType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSCalendarItemCreateOrDeleteOperationType class]];
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
+ (NSString *) SendToAllAndSaveCopy { return @"SendToAllAndSaveCopy"; }
@end

