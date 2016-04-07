#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttachmentType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSAttachmentIdType.h"


@implementation MPSEWSAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttachmentType class]];

    [handler property      : @"attachmentId"
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSAttachmentIdType class]];

    [handler property      : @"name"
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentType"
             withNamespace : 't'
             withXmlTag    : @"ContentType"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentId"
             withNamespace : 't'
             withXmlTag    : @"ContentId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentLocation"
             withNamespace : 't'
             withXmlTag    : @"ContentLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"size"
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isInline"
             withNamespace : 't'
             withXmlTag    : @"IsInline"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAttachmentType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val attachmentId] && ![MPSEWSAttachmentIdType isValid:[val attachmentId] forVersion:ver]) return FALSE;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion:ver]) return FALSE;
    if ([val contentType] && ![MPSEWSStringTypeHandler isValid:[val contentType] forVersion:ver]) return FALSE;
    if ([val contentId] && ![MPSEWSStringTypeHandler isValid:[val contentId] forVersion:ver]) return FALSE;
    if ([val contentLocation] && ![MPSEWSStringTypeHandler isValid:[val contentLocation] forVersion:ver]) return FALSE;
    if ([val size] && ![MPSEWSIntegerTypeHandler isValid:[val size] forVersion:ver]) return FALSE;
    if ([val lastModifiedTime] && ![MPSEWSDateTimeTypeHandler isValid:[val lastModifiedTime] forVersion:ver]) return FALSE;
    if ([val isInline] && ![MPSEWSBooleanTypeHandler isValid:[val isInline] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentType: AttachmentId=%@ Name=%@ ContentType=%@ ContentId=%@ ContentLocation=%@ Size=%@ LastModifiedTime=%@ IsInline=%@", _attachmentId, _name, _contentType, _contentId, _contentLocation, _size, _lastModifiedTime, _isInline];
}

@end

