#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfSearchItemKindsType.h"
#import "../types/MPSEWSSearchItemKindType.h"


@implementation MPSEWSArrayOfSearchItemKindsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfSearchItemKindsType class]];

    [handler listProperty  : @"searchItemKind"
             useSelector   : @"addSearchItemKind"
             withNamespace : 't'
             withXmlTag    : @"SearchItemKind"
             withHandler   : [MPSEWSSearchItemKindType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfSearchItemKindsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val searchItemKind]) {
        for (NSString* obj in [val searchItemKind]) {
            if (![MPSEWSSearchItemKindType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfSearchItemKindsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSearchItemKindsType: SearchItemKind=%@", _searchItemKind];
}

- (void) addSearchItemKind:(NSString*) elem
{
    if (![self searchItemKind]) {
        [self setSearchItemKind:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_searchItemKind addObject:elem];
}

@end

