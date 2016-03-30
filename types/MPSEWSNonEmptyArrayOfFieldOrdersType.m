#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/MPSEWSFieldOrderType.h"


@implementation MPSEWSNonEmptyArrayOfFieldOrdersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfFieldOrdersType class]];

    [handler listProperty  : @"fieldOrder"
             useSelector   : @"addFieldOrder"
             withNamespace : 't'
             withXmlTag    : @"FieldOrder"
             withHandler   : [MPSEWSFieldOrderType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFieldOrdersType*) val
{   (void) val;
    if ([val fieldOrder]) {
        for (MPSEWSFieldOrderType* obj in [val fieldOrder]) {
            if (![MPSEWSFieldOrderType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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

