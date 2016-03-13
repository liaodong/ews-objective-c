#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIndexedPageViewType.h"


@implementation EWSIndexedPageViewType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIndexedPageViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"offset"
             isRequired  : TRUE
             withAttrTag : @"Offset"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"basePoint"
             isRequired  : TRUE
             withAttrTag : @"BasePoint"
             withHandler : [EWSIndexBasePointType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSIndexedPageViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IndexedPageViewType: Offset=%@ BasePoint=%@ super=%@", _offset, _basePoint, [super description]];
}

@end

