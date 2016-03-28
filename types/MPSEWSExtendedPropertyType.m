#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"


@implementation MPSEWSExtendedPropertyType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExtendedPropertyType class]];

    [handler property      : @"extendedFieldURI"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ExtendedFieldURI"
             withHandler   : [MPSEWSPathToExtendedFieldType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExtendedPropertyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExtendedPropertyType: ExtendedFieldURI=%@", _extendedFieldURI];
}

@end

