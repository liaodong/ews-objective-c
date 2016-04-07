#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfTimeZoneIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSNonEmptyArrayOfTimeZoneIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfTimeZoneIdType class]];

    [handler listProperty  : @"id"
             useSelector   : @"addId"
             withNamespace : 't'
             withXmlTag    : @"Id"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfTimeZoneIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val id]) {
        for (NSString* obj in [val id]) {
            if (![MPSEWSStringTypeHandler isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfTimeZoneIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfTimeZoneIdType: Id=%@", _id];
}

- (void) addId:(NSString*) elem
{
    if (![self id]) {
        [self setId:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_id addObject:elem];
}

@end

