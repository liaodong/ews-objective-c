#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMimeContentType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSMimeContentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMimeContentType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"characterSet"
             withAttrTag : @"CharacterSet"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMimeContentType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMimeContentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MimeContentType: CharacterSet=%@ super=%@", _characterSet, [super description]];
}

@end

