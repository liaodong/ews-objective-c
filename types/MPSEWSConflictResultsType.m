#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConflictResultsType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSConflictResultsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConflictResultsType class]];

    [handler property      : @"count"
             withNamespace : 't'
             withXmlTag    : @"Count"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConflictResultsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val count] && ![MPSEWSIntegerTypeHandler isValid:[val count] forVersion:ver]) return FALSE;
    return TRUE;
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

