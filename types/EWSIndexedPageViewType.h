#import <Foundation/Foundation.h>
#import "EWSBasePagingType.h"






/* IndexedPageViewType */
@interface EWSIndexedPageViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* offset     /* xs:int */;
@property (strong) NSString* basePoint  /* EWSIndexBasePointType */;


@end

