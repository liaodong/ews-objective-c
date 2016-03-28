#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSConflictResultsType.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSConflictResultsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSConflictResultsType class]];

    [handler property      : @"count"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Count"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSConflictResultsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConflictResultsType: Count=%@", _count];
}

@end

