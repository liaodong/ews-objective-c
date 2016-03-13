#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSidAndAttributesType.h"


@implementation EWSSidAndAttributesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSidAndAttributesType class]];

    [handler property    : @"attributes"
             isRequired  : TRUE
             withAttrTag : @"Attributes"
             withHandler : [EWSUnsignedIntTypeHandler class]];

    [handler property      : @"securityIdentifier"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SecurityIdentifier"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSidAndAttributesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SidAndAttributesType: Attributes=%@ SecurityIdentifier=%@", _attributes, _securityIdentifier];
}

@end

