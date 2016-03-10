#import <Foundation/Foundation.h>
#import "EWSPropertyTagType.h"

@implementation EWSPropertyTagType 

+ (void) initialize
{
    [[EWSPropertyTagType alloc] init];
}

- (id) init
{
    self = [super initWithClass:[EWSPropertyTagType class]];
    return self;
}

- (id) construct
{
    return [[NSString alloc] init];
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
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

- (void) writeXmlInto:(NSMutableString*)buffer forObject:(id) object
{
    NSNumber* obj = ((NSNumber*) object);
    [buffer appendFormat:@"%d", [obj unsignedShortValue]];
}

@end

