#import <Foundation/Foundation.h>
#import "MPSEWSPostReplyItemBaseType.h"



@class MPSEWSBodyType;



/* PostReplyItemType */
@interface MPSEWSPostReplyItemType : MPSEWSPostReplyItemBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBodyType* pNewBodyContent;


@end

