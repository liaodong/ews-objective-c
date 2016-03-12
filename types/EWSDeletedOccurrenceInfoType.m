#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSDeletedOccurrenceInfoType.h"


@implementation EWSDeletedOccurrenceInfoType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeletedOccurrenceInfoType class]];

    [handler property   : @"start"
             isRequired : TRUE
             withXmlTag : @"Start"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDeletedOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeletedOccurrenceInfoType: Start=%@", _start];
}

@end

