#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFieldOrderType.h"


@implementation EWSFieldOrderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFieldOrderType class]];

    [handler property    : @"order"
             isRequired  : TRUE
             withAttrTag : @"Order"
             withHandler : [EWSSortDirectionType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFieldOrderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FieldOrderType: Order=%@ Path=%@", _order, _path];
}

@end

