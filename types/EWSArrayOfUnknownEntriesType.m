#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfUnknownEntriesType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSArrayOfUnknownEntriesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfUnknownEntriesType class]];

    [handler property      : @"unknownEntry"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UnknownEntry"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfUnknownEntriesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUnknownEntriesType: UnknownEntry=%@", _unknownEntry];
}

@end

