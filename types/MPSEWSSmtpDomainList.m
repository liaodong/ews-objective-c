#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSmtpDomainList.h"
#import "../types/MPSEWSSmtpDomain.h"


@implementation MPSEWSSmtpDomainList 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSmtpDomainList class]];

    [handler listProperty  : @"domain"
             useSelector   : @"addDomain"
             withNamespace : 't'
             withXmlTag    : @"Domain"
             withHandler   : [MPSEWSSmtpDomain class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSmtpDomainList*) val
{   (void) val;
    if ([val domain]) {
        for (MPSEWSSmtpDomain* obj in [val domain]) {
            if (![MPSEWSSmtpDomain isValid:obj]) return FALSE;
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
    return [MPSEWSSmtpDomainList class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SmtpDomainList: Domain=%@", _domain];
}

- (void) addDomain:(MPSEWSSmtpDomain*) elem
{
    if (![self domain]) {
        [self setDomain:[[NSMutableArray<MPSEWSSmtpDomain*> alloc] init]];
    }
    [_domain addObject:elem];
}

@end

