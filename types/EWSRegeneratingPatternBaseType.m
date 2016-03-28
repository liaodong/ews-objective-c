#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRegeneratingPatternBaseType.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSRegeneratingPatternBaseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRegeneratingPatternBaseType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRegeneratingPatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RegeneratingPatternBaseType: super=%@", [super description]];
}

@end

