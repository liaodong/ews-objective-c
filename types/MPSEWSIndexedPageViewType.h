#import <Foundation/Foundation.h>
#import "MPSEWSBasePagingType.h"






/* IndexedPageViewType */
@interface MPSEWSIndexedPageViewType : MPSEWSBasePagingType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIndexedPageViewType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* offset     /* xs:int */;
@property (strong) NSString* basePoint  /* MPSEWSIndexBasePointType */;


@end

