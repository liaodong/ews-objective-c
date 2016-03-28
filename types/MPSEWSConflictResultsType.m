#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConflictResultsType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSConflictResultsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConflictResultsType class]];

    [handler property      : @"count"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Count"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConflictResultsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConflictResultsType: Count=%@", _count];
}

@end

