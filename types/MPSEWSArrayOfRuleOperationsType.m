#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRuleOperationsType.h"
#import "../types/MPSEWSCreateRuleOperationType.h"
#import "../types/MPSEWSDeleteRuleOperationType.h"
#import "../types/MPSEWSSetRuleOperationType.h"


@implementation MPSEWSArrayOfRuleOperationsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRuleOperationsType class]];

    [handler listProperty  : @"createRuleOperation"
             useSelector   : @"addCreateRuleOperation"
             withNamespace : 't'
             withXmlTag    : @"CreateRuleOperation"
             withHandler   : [MPSEWSCreateRuleOperationType class]];

    [handler listProperty  : @"setRuleOperation"
             useSelector   : @"addSetRuleOperation"
             withNamespace : 't'
             withXmlTag    : @"SetRuleOperation"
             withHandler   : [MPSEWSSetRuleOperationType class]];

    [handler listProperty  : @"deleteRuleOperation"
             useSelector   : @"addDeleteRuleOperation"
             withNamespace : 't'
             withXmlTag    : @"DeleteRuleOperation"
             withHandler   : [MPSEWSDeleteRuleOperationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRuleOperationsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val createRuleOperation]) {
        for (MPSEWSCreateRuleOperationType* obj in [val createRuleOperation]) {
            if (![MPSEWSCreateRuleOperationType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val setRuleOperation]) {
        for (MPSEWSSetRuleOperationType* obj in [val setRuleOperation]) {
            if (![MPSEWSSetRuleOperationType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val deleteRuleOperation]) {
        for (MPSEWSDeleteRuleOperationType* obj in [val deleteRuleOperation]) {
            if (![MPSEWSDeleteRuleOperationType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfRuleOperationsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRuleOperationsType: CreateRuleOperation=%@ SetRuleOperation=%@ DeleteRuleOperation=%@", _createRuleOperation, _setRuleOperation, _deleteRuleOperation];
}

- (void) addCreateRuleOperation:(MPSEWSCreateRuleOperationType*) elem
{
    if (![self createRuleOperation]) {
        [self setCreateRuleOperation:[[NSMutableArray<MPSEWSCreateRuleOperationType*> alloc] init]];
    }
    [_createRuleOperation addObject:elem];
}

- (void) addSetRuleOperation:(MPSEWSSetRuleOperationType*) elem
{
    if (![self setRuleOperation]) {
        [self setSetRuleOperation:[[NSMutableArray<MPSEWSSetRuleOperationType*> alloc] init]];
    }
    [_setRuleOperation addObject:elem];
}

- (void) addDeleteRuleOperation:(MPSEWSDeleteRuleOperationType*) elem
{
    if (![self deleteRuleOperation]) {
        [self setDeleteRuleOperation:[[NSMutableArray<MPSEWSDeleteRuleOperationType*> alloc] init]];
    }
    [_deleteRuleOperation addObject:elem];
}

@end

