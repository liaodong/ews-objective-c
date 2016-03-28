#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfStringsType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSArrayOfStringsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfStringsType class]];

    [handler listProperty  : @"string"
             isNonEmpty    : FALSE
             useSelector   : @"addString"
             withNamespace : 't'
             withXmlTag    : @"String"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfStringsType class];
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

