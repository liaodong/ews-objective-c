#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNoEndRecurrenceRangeType.h"
#import "../handlers/MPSEWSDateTypeHandler.h"


@implementation MPSEWSNoEndRecurrenceRangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNoEndRecurrenceRangeType class]];

    [handler property      : @"startDate"
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNoEndRecurrenceRangeType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNoEndRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NoEndRecurrenceRangeType: super=%@", [super description]];
}

@end

