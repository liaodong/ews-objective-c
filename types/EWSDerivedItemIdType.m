#import <Foundation/Foundation.h>

#import "EWSDerivedItemIdType.h"
@implementation EWSDerivedItemIdType /* SimpleType */

+ (void) initialize
{
    [[[EWSDerivedItemIdType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDerivedItemIdType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) construct
{
    return [[NSString alloc] init];
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [s length] > 0 ? s : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    [buffer appendString:obj];
}

@end

