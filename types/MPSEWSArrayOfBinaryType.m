#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfBinaryType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"


@implementation MPSEWSArrayOfBinaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfBinaryType class]];

    [handler listProperty  : @"base64Binary"
             useSelector   : @"addBase64Binary"
             withNamespace : 't'
             withXmlTag    : @"Base64Binary"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfBinaryType*) val
{   (void) val;
    if ([val base64Binary]) {
        for (NSData* obj in [val base64Binary]) {
            if (![MPSEWSBase64BinaryTypeHandler isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfBinaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfBinaryType: Base64Binary=%@", _base64Binary];
}

- (void) addBase64Binary:(NSData*) elem
{
    if (![self base64Binary]) {
        [self setBase64Binary:[[NSMutableArray<NSData*> alloc] init]];
    }
    [_base64Binary addObject:elem];
}

@end

