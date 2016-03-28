#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExtendedPropertyType.h"
#import "../types/EWSPathToExtendedFieldType.h"


@implementation EWSExtendedPropertyType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExtendedPropertyType class]];

    [handler property      : @"extendedFieldURI"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ExtendedFieldURI"
             withHandler   : [EWSPathToExtendedFieldType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExtendedPropertyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExtendedPropertyType: ExtendedFieldURI=%@", _extendedFieldURI];
}

@end

