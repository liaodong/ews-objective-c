#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/EWSInternetHeaderType.h"


@implementation EWSNonEmptyArrayOfInternetHeadersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler listProperty  : @"internetMessageHeader"
             isNonEmpty    : TRUE
             useSelector   : @"addInternetMessageHeader"
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeader"
             withHandler   : [EWSInternetHeaderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfInternetHeadersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfInternetHeadersType: InternetMessageHeader=%@", _internetMessageHeader];
}

- (void) addInternetMessageHeader:(EWSInternetHeaderType*) elem
{
    if (![self internetMessageHeader]) {
        [self setInternetMessageHeader:[[NSMutableArray<EWSInternetHeaderType*> alloc] init]];
    }
    [_internetMessageHeader addObject:elem];
}

@end

