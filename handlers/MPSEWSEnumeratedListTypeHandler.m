#import <Foundation/Foundation.h>

#import "MPSEWSEnumeratedListTypeHandler.h"
@implementation MPSEWSEnumeratedListTypeHandler

- (id) initWithClass:(Class) cls andValues:(NSSet*) v
{
    self = [super initWithClass:cls];
    [self setEnumerations:v];
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
        if ([[self enumerations] containsObject:e]) {
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
        NSAssert([[self enumerations] containsObject:e], @"String is a enumerated list");
        if (addSpace)
            [buffer appendString:@" "];
        [buffer appendString:e];
        addSpace = TRUE;
    }
}

@end

