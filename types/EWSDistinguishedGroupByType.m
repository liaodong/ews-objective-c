#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDistinguishedGroupByType.h"


@implementation EWSDistinguishedGroupByType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDistinguishedGroupByType class]];

    [handler property    : @"order"
             isRequired  : TRUE
             withAttrTag : @"Order"
             withHandler : [EWSSortDirectionType class]];

    [handler property      : @"standardGroupBy"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StandardGroupBy"
             withHandler   : [EWSStandardGroupByType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDistinguishedGroupByType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DistinguishedGroupByType: StandardGroupBy=%@ super=%@", _standardGroupBy, [super description]];
}

@end

