#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemChangeType.h"
#import "../types/MPSEWSNonEmptyArrayOfItemChangeDescriptionsType.h"


@implementation MPSEWSItemChangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemChangeType class]];

    [handler property      : @"updates"
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [MPSEWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemChangeType: Updates=%@", _updates];
}

@end

