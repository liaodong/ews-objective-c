#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/MPSEWSInternetHeaderType.h"


@implementation MPSEWSNonEmptyArrayOfInternetHeadersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfInternetHeadersType class]];

    [handler listProperty  : @"internetMessageHeader"
             useSelector   : @"addInternetMessageHeader"
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeader"
             withHandler   : [MPSEWSInternetHeaderType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfInternetHeadersType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val internetMessageHeader]) {
        for (MPSEWSInternetHeaderType* obj in [val internetMessageHeader]) {
            if (![MPSEWSInternetHeaderType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfInternetHeadersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfInternetHeadersType: InternetMessageHeader=%@", _internetMessageHeader];
}

- (void) addInternetMessageHeader:(MPSEWSInternetHeaderType*) elem
{
    if (![self internetMessageHeader]) {
        [self setInternetMessageHeader:[[NSMutableArray<MPSEWSInternetHeaderType*> alloc] init]];
    }
    [_internetMessageHeader addObject:elem];
}

@end

