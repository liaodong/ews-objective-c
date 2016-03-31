#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMailboxCultureType.h"


@implementation MPSEWSMailboxCultureType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMailboxCultureType class] andContentHandlerClass:[MPSEWSLanguageTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMailboxCultureType*) val
{   (void) val;
    if (![MPSEWSLanguageType isValid:val]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMailboxCultureType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailboxCultureType: super=%@", [super description]];
}

@end

