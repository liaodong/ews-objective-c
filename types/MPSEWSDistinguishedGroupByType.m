#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDistinguishedGroupByType.h"
#import "../types/MPSEWSSortDirectionType.h"
#import "../types/MPSEWSStandardGroupByType.h"


@implementation MPSEWSDistinguishedGroupByType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDistinguishedGroupByType class]];

    [handler property    : @"order"
             withAttrTag : @"Order"
             withHandler : [MPSEWSSortDirectionType class]];

    [handler property      : @"standardGroupBy"
             withNamespace : 't'
             withXmlTag    : @"StandardGroupBy"
             withHandler   : [MPSEWSStandardGroupByType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDistinguishedGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DistinguishedGroupByType: StandardGroupBy=%@ super=%@", _standardGroupBy, [super description]];
}

@end

