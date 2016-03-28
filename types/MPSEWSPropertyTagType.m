#import <Foundation/Foundation.h>
#import "MPSEWSPropertyTagType.h"

@implementation MPSEWSPropertyTagType 

+ (void) initialize
{
    [[MPSEWSPropertyTagType alloc] init];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSPropertyTagType class]];
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
        return [NSNumber numberWithUnsignedShort:val];
    }
    else 
    {
        return [NSNumber numberWithUnsignedShort:[s integerValue]]; 
    }
    return obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSNumber*) object
{
    NSNumber* obj = ((NSNumber*) object);
    [buffer appendFormat:@"%d", [obj unsignedShortValue]];
}

@end

