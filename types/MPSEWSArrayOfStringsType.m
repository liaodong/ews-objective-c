#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfStringsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSArrayOfStringsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfStringsType class]];

    [handler listProperty  : @"string"
             isNonEmpty    : FALSE
             useSelector   : @"addString"
             withNamespace : 't'
             withXmlTag    : @"String"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfStringsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfStringsType: String=%@", _string];
}

- (void) addString:(NSString*) elem
{
    if (![self string]) {
        [self setString:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_string addObject:elem];
}

@end
