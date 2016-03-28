#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAlternateIdBaseType.h"
#import "../types/EWSIdFormatType.h"


@implementation EWSAlternateIdBaseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAlternateIdBaseType class]];

    [handler property    : @"format"
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [EWSIdFormatType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAlternateIdBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternateIdBaseType: Format=%@", _format];
}

@end

