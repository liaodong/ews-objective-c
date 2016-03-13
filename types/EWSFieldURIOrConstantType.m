#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFieldURIOrConstantType.h"


@implementation EWSFieldURIOrConstantType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFieldURIOrConstantType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFieldURIOrConstantType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FieldURIOrConstantType:"];
}

@end

