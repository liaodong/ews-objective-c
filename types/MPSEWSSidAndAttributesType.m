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
             withAttrTag : @"Attributes"
             withHandler : [MPSEWSUnsignedIntTypeHandler class]];

    [handler property      : @"securityIdentifier"
             withNamespace : 't'
             withXmlTag    : @"SecurityIdentifier"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSidAndAttributesType*) val
{   (void) val;
    if ([val attributes] && ![MPSEWSUnsignedIntTypeHandler isValid:[val attributes]]) return FALSE;
    if ([val securityIdentifier] && ![MPSEWSStringTypeHandler isValid:[val securityIdentifier]]) return FALSE;
    return TRUE;
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

