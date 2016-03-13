#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMimeContentType.h"


@implementation EWSMimeContentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMimeContentType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"characterSet"
             isRequired  : FALSE
             withAttrTag : @"CharacterSet"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMimeContentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MimeContentType: CharacterSet=%@ super=%@", _characterSet, [super description]];
}

@end

