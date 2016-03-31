#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSServerVersionInfoType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSServerVersionInfoType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSServerVersionInfoType class]];

    [handler property    : @"majorVersion"
             withAttrTag : @"MajorVersion"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"minorVersion"
             withAttrTag : @"MinorVersion"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"majorBuildNumber"
             withAttrTag : @"MajorBuildNumber"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"minorBuildNumber"
             withAttrTag : @"MinorBuildNumber"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"version"
             withAttrTag : @"Version"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSServerVersionInfoType*) val
{   (void) val;
    if ([val majorVersion] && ![MPSEWSIntegerTypeHandler isValid:[val majorVersion]]) return FALSE;
    if ([val minorVersion] && ![MPSEWSIntegerTypeHandler isValid:[val minorVersion]]) return FALSE;
    if ([val majorBuildNumber] && ![MPSEWSIntegerTypeHandler isValid:[val majorBuildNumber]]) return FALSE;
    if ([val minorBuildNumber] && ![MPSEWSIntegerTypeHandler isValid:[val minorBuildNumber]]) return FALSE;
    if ([val version] && ![MPSEWSStringTypeHandler isValid:[val version]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSServerVersionInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ServerVersionInfoType: MajorVersion=%@ MinorVersion=%@ MajorBuildNumber=%@ MinorBuildNumber=%@ Version=%@", _majorVersion, _minorVersion, _majorBuildNumber, _minorBuildNumber, _version];
}

@end

