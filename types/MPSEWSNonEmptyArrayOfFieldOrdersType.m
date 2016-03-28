#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/MPSEWSFieldOrderType.h"


@implementation MPSEWSNonEmptyArrayOfFieldOrdersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfFieldOrdersType class]];

    [handler listProperty  : @"fieldOrder"
             isNonEmpty    : TRUE
             useSelector   : @"addFieldOrder"
             withNamespace : 't'
             withXmlTag    : @"FieldOrder"
             withHandler   : [MPSEWSFieldOrderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfFieldOrdersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFieldOrdersType: FieldOrder=%@", _fieldOrder];
}

- (void) addFieldOrder:(MPSEWSFieldOrderType*) elem
{
    if (![self fieldOrder]) {
        [self setFieldOrder:[[NSMutableArray<MPSEWSFieldOrderType*> alloc] init]];
    }
    [_fieldOrder addObject:elem];
}

@end

