#import <Foundation/Foundation.h>

#import "EWSPropertyTagType.h"
@implementation EWSPropertyTagType 

static int minLength = 1;

+ (void) initialize
{
    [[EWSPropertyTagType alloc] init];}

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
    return s;
}

- (void) writeXmlInto:(NSMutableString*)buffer forObject:(id) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([obj length] >= minLength, @"String should have a min length");
    [buffer appendString:obj];
}

@end

