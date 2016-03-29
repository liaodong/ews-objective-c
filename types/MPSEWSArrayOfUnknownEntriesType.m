#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfUnknownEntriesType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSArrayOfUnknownEntriesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfUnknownEntriesType class]];

    [handler listProperty  : @"unknownEntry"
             useSelector   : @"addUnknownEntry"
             withNamespace : 't'
             withXmlTag    : @"UnknownEntry"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfUnknownEntriesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUnknownEntriesType: UnknownEntry=%@", _unknownEntry];
}

- (void) addUnknownEntry:(NSString*) elem
{
    if (![self unknownEntry]) {
        [self setUnknownEntry:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_unknownEntry addObject:elem];
}

@end

