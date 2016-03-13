#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"



/* BasePagingType */
@interface EWSBasePagingType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* maxEntriesReturned  /* xs:int */;


@end

