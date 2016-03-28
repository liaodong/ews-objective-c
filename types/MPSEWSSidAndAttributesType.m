#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSidAndAttributesType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSUnsignedIntTypeHandler.h"


@implementation MPSEWSSidAndAttributesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSidAndAttributesType class]];

    [handler property    : @"attributes"
             isRequired  : TRUE
             withAttrTag : @"Attributes"
             withHandler : [MPSEWSUnsignedIntTypeHandler class]];

    [handler property      : @"securityIdentifier"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SecurityIdentifier"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSidAndAttributesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SidAndAttributesType: Attributes=%@ SecurityIdentifier=%@", _attributes, _securityIdentifier];
}

@end

