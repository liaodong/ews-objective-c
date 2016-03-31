#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfSmtpAddressType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSArrayOfSmtpAddressType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfSmtpAddressType class]];

    [handler listProperty  : @"smtpAddress"
             useSelector   : @"addSmtpAddress"
             withNamespace : 't'
             withXmlTag    : @"SmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfSmtpAddressType*) val
{   (void) val;
    if ([val smtpAddress]) {
        for (NSString* obj in [val smtpAddress]) {
            if (![MPSEWSNonEmptyStringType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfSmtpAddressType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSmtpAddressType: SmtpAddress=%@", _smtpAddress];
}

- (void) addSmtpAddress:(NSString*) elem
{
    if (![self smtpAddress]) {
        [self setSmtpAddress:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_smtpAddress addObject:elem];
}

@end

