#import <Foundation/Foundation.h>

#import "MPSEWSDaysOfWeekType.h"
@implementation MPSEWSDaysOfWeekType 

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", @"Day", @"Weekday", @"WeekendDay", nil];
    [[MPSEWSDaysOfWeekType alloc] init];
}

+ (BOOL) isValid:(NSArray<NSString*>*) val
{
    for (NSString* v in val)
    {
        if (![enumerations containsObject:v]) return FALSE;
    }
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDaysOfWeekType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSMutableArray<NSString *> *) construct
{
    return [[NSMutableArray<NSString *> alloc] init];
}

- (NSMutableArray<NSString *> *) updateObject:(NSMutableArray<NSString *> *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];   
    for (NSString* e in [s componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]) {
        if ([enumerations containsObject:e]) {
            [obj addObject:e];
        }
    }
    return obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSMutableArray<NSString *> *) object
{
    NSMutableArray<NSString *>* obj = ((NSMutableArray<NSString *>*) object);

    BOOL addSpace = FALSE;

    for (NSString* e in obj) {
        NSAssert([enumerations containsObject:e], @"String is a enumerated list");
        if (addSpace)
            [buffer appendString:@" "];
        [buffer appendString:e];
        addSpace = TRUE;
    }
}

@end

