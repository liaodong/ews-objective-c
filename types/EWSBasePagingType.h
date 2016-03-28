#import <Foundation/Foundation.h>






/* BasePagingType */
@interface EWSBasePagingType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* maxEntriesReturned  /* xs:int */;


@end

