#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/EWSFieldOrderType.h"


@implementation EWSNonEmptyArrayOfFieldOrdersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFieldOrdersType class]];

    [handler listProperty  : @"fieldOrder"
             isNonEmpty    : TRUE
             useSelector   : @"addFieldOrder"
             withNamespace : 't'
             withXmlTag    : @"FieldOrder"
             withHandler   : [EWSFieldOrderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFieldOrdersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFieldOrdersType: FieldOrder=%@", _fieldOrder];
}

- (void) addFieldOrder:(EWSFieldOrderType*) elem
{
    if (![self fieldOrder]) {
        [self setFieldOrder:[[NSMutableArray<EWSFieldOrderType*> alloc] init]];
    }
    [_fieldOrder addObject:elem];
}

@end

