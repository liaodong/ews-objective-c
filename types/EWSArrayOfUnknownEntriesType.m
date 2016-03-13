#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfUnknownEntriesType.h"


@implementation EWSArrayOfUnknownEntriesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfUnknownEntriesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfUnknownEntriesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUnknownEntriesType:"];
}

@end

