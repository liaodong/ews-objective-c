#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSIndexBasePointType.h"
#import "EWSBasePagingType.h"



/* IndexedPageViewType */
@interface EWSIndexedPageViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* offset     /* xs:int */;
@property (retain) NSString* basePoint  /* EWSIndexBasePointType */;


@end

