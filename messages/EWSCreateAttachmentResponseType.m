#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateAttachmentResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSCreateAttachmentResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateAttachmentResponseType class]];

    [handler property      : @"responseMessages"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [EWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCreateAttachmentResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateAttachmentResponseType: super=%@", [super description]];
}

@end

