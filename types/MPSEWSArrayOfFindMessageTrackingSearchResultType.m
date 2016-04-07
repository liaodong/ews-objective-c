#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfFindMessageTrackingSearchResultType.h"
#import "../types/MPSEWSFindMessageTrackingSearchResultType.h"


@implementation MPSEWSArrayOfFindMessageTrackingSearchResultType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfFindMessageTrackingSearchResultType class]];

    [handler listProperty  : @"messageTrackingSearchResult"
             useSelector   : @"addMessageTrackingSearchResult"
             withNamespace : 't'
             withXmlTag    : @"MessageTrackingSearchResult"
             withHandler   : [MPSEWSFindMessageTrackingSearchResultType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfFindMessageTrackingSearchResultType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val messageTrackingSearchResult]) {
        for (MPSEWSFindMessageTrackingSearchResultType* obj in [val messageTrackingSearchResult]) {
            if (![MPSEWSFindMessageTrackingSearchResultType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfFindMessageTrackingSearchResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfFindMessageTrackingSearchResultType: MessageTrackingSearchResult=%@", _messageTrackingSearchResult];
}

- (void) addMessageTrackingSearchResult:(MPSEWSFindMessageTrackingSearchResultType*) elem
{
    if (![self messageTrackingSearchResult]) {
        [self setMessageTrackingSearchResult:[[NSMutableArray<MPSEWSFindMessageTrackingSearchResultType*> alloc] init]];
    }
    [_messageTrackingSearchResult addObject:elem];
}

@end

