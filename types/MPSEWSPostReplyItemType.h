#import <Foundation/Foundation.h>
#import "MPSEWSPostReplyItemBaseType.h"



@class MPSEWSBodyType;



/* PostReplyItemType */
@interface MPSEWSPostReplyItemType : MPSEWSPostReplyItemBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPostReplyItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBodyType* pNewBodyContent;


@end

