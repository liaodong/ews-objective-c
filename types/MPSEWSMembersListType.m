#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMembersListType.h"
#import "../types/MPSEWSMemberType.h"


@implementation MPSEWSMembersListType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMembersListType class]];

    [handler listProperty  : @"member"
             useSelector   : @"addMember"
             withNamespace : 't'
             withXmlTag    : @"Member"
             withHandler   : [MPSEWSMemberType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMembersListType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val member]) {
        for (MPSEWSMemberType* obj in [val member]) {
            if (![MPSEWSMemberType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSMembersListType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MembersListType: Member=%@", _member];
}

- (void) addMember:(MPSEWSMemberType*) elem
{
    if (![self member]) {
        [self setMember:[[NSMutableArray<MPSEWSMemberType*> alloc] init]];
    }
    [_member addObject:elem];
}

@end

