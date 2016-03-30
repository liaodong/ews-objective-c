#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfPropertyValuesType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSNonEmptyArrayOfPropertyValuesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfPropertyValuesType class]];

    [handler listProperty  : @"value"
             useSelector   : @"addValue"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPropertyValuesType*) val
{   (void) val;
    if ([val value]) {
        for (NSString* obj in [val value]) {
            if (![MPSEWSStringTypeHandler isValid:obj]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfPropertyValuesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfPropertyValuesType: Value=%@", _value];
}

- (void) addValue:(NSString*) elem
{
    if (![self value]) {
        [self setValue:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_value addObject:elem];
}

@end

