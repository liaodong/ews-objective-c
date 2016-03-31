#import <Foundation/Foundation.h>
#import "MPSEWSReminderMinutesBeforeStartType.h"

@implementation MPSEWSReminderMinutesBeforeStartType 

+ (void) initialize
{
    [[[MPSEWSReminderMinutesBeforeStartType alloc] init] register];
}
+ (BOOL) isValid:(NSString*) val
{
    (void) val; // FIX ME
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSReminderMinutesBeforeStartType class]];
    return self;
}

- (id) construct
{
    return [[NSString alloc] init];
}

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([s hasPrefix:@"0x"] || [s hasPrefix:@"0X"])
    {
        unsigned int val;
        NSScanner* scanner = [NSScanner scannerWithString:s];
        [scanner scanHexInt:&val];
        return [NSNumber numberWithUnsignedInteger:val];
    }
    else 
    {
        return [NSNumber numberWithUnsignedInteger:[s integerValue]]; 
    }
    return obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSNumber*) object
{
    NSNumber* obj = ((NSNumber*) object);
    [buffer appendFormat:@"%lu", [obj unsignedIntegerValue]];
}

@end

