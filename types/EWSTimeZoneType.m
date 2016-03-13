#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTimeZoneType.h"


@implementation EWSTimeZoneType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTimeZoneType class]];

    [handler property    : @"timeZoneName"
             isRequired  : FALSE
             withAttrTag : @"TimeZoneName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property   : @"baseOffset"
             isRequired : TRUE
             withXmlTag : @"BaseOffset"
             withHandler: [EWSDurationTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTimeZoneType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneType: TimeZoneName=%@ BaseOffset=%@", _timeZoneName, _baseOffset];
}

@end

