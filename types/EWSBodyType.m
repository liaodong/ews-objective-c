#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSBodyType.h"


@implementation EWSBodyType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBodyType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"bodyType"
             isRequired  : TRUE
             withAttrTag : @"BodyType"
             withHandler : [EWSBodyTypeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBodyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BodyType: BodyType=%@ super=%@", _bodyType, [super description]];
}

@end

