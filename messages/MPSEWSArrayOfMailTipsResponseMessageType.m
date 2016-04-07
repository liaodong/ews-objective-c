#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfMailTipsResponseMessageType.h"
#import "../messages/MPSEWSMailTipsResponseMessageType.h"


@implementation MPSEWSArrayOfMailTipsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfMailTipsResponseMessageType class]];

    [handler listProperty  : @"mailTipsResponseMessageType"
             useSelector   : @"addMailTipsResponseMessageType"
             withNamespace : 'm'
             withXmlTag    : @"MailTipsResponseMessageType"
             withHandler   : [MPSEWSMailTipsResponseMessageType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfMailTipsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val mailTipsResponseMessageType]) {
        for (MPSEWSMailTipsResponseMessageType* obj in [val mailTipsResponseMessageType]) {
            if (![MPSEWSMailTipsResponseMessageType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfMailTipsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfMailTipsResponseMessageType: MailTipsResponseMessageType=%@", _mailTipsResponseMessageType];
}

- (void) addMailTipsResponseMessageType:(MPSEWSMailTipsResponseMessageType*) elem
{
    if (![self mailTipsResponseMessageType]) {
        [self setMailTipsResponseMessageType:[[NSMutableArray<MPSEWSMailTipsResponseMessageType*> alloc] init]];
    }
    [_mailTipsResponseMessageType addObject:elem];
}

@end

